
A commercial batch traces upstream to its breeding-program parents (`family_id`), and every fish-health/feed/planning fact table joins back to `batch_id` and/or `unit_id`/`site_id`.

---

```sql
-- ============================================================
-- AQUACULTURE DATA REPOSITORY — FULL RELATIONAL SCHEMA
-- Domains: Selective Breeding & Genetics | Production Planning
--          (Hatchery + Net Pen) | Feed Formulation | Fish Health
--
-- Traceability backbone:
--   family_id  -> batch_id  -> unit_id  -> site_id
--   (genetics)    (fish)      (physical)   (regulatory)
--
-- A commercial batch traces upstream to its breeding-program
-- parents (family_id), and every fish-health/feed/planning fact
-- table joins back to batch_id and/or unit_id/site_id.
-- ============================================================


-- ============================================================
-- DOMAIN 1: SELECTIVE BREEDING & GENETICS
-- (Upstream of everything else — determines genetic potential
--  before a batch is ever stocked.)
-- ============================================================

CREATE TABLE broodstock_individuals (
    individual_id       VARCHAR(20) PRIMARY KEY,
    tag_id               VARCHAR(30),                 -- PIT/VIE tag reference
    sex                  VARCHAR(10),
    birth_date           DATE,
    generation           INT,
    sire_id              VARCHAR(20) REFERENCES broodstock_individuals(individual_id),
    dam_id               VARCHAR(20) REFERENCES broodstock_individuals(individual_id),
    inbreeding_coefficient DECIMAL(5,4),
    is_active_broodstock BOOLEAN DEFAULT TRUE
);

CREATE TABLE families (
    family_id            VARCHAR(20) PRIMARY KEY,
    sire_id               VARCHAR(20) NOT NULL REFERENCES broodstock_individuals(individual_id),
    dam_id                 VARCHAR(20) NOT NULL REFERENCES broodstock_individuals(individual_id),
    year_class             VARCHAR(20),
    mating_date            DATE,
    fertilization_rate_pct DECIMAL(5,2),
    egg_survival_rate_pct  DECIMAL(5,2),
    family_size            INT                         -- offspring surviving to key life stage
);

CREATE TABLE phenotype_records (
    record_id            VARCHAR(20) PRIMARY KEY,
    individual_id         VARCHAR(20) NOT NULL REFERENCES broodstock_individuals(individual_id),
    trait_type             VARCHAR(50),                -- 'growth_weight', 'ipn_survival', 'fillet_fat_pct', etc.
    trait_value             DECIMAL(10,4),
    unit                    VARCHAR(20),
    measurement_date        DATE,
    test_type               VARCHAR(30)                 -- 'own_performance', 'sib_challenge_test'
);

CREATE TABLE genotype_records (
    genotype_id           VARCHAR(20) PRIMARY KEY,
    individual_id          VARCHAR(20) NOT NULL REFERENCES broodstock_individuals(individual_id),
    snp_panel               VARCHAR(50),                -- e.g. 'Affymetrix_50K_salmon'
    num_markers             INT,
    genotyping_date         DATE,
    sample_type             VARCHAR(20)                 -- 'fin_clip', 'blood', 'tissue'
);

CREATE TABLE breeding_values (
    bv_id                  VARCHAR(20) PRIMARY KEY,
    individual_id           VARCHAR(20) NOT NULL REFERENCES broodstock_individuals(individual_id),
    trait_type               VARCHAR(50),
    ebv_or_gebv              DECIMAL(10,4),
    accuracy                 DECIMAL(4,3),               -- 0-1 statistical confidence
    method                   VARCHAR(20),                -- 'BLUP', 'GBLUP', 'ssGBLUP'
    evaluation_date          DATE,
    selection_index_value    DECIMAL(10,4),
    selected_as_parent       BOOLEAN DEFAULT FALSE
);

CREATE TABLE cryobank_records (
    cryo_id                VARCHAR(20) PRIMARY KEY,
    individual_id           VARCHAR(20) NOT NULL REFERENCES broodstock_individuals(individual_id),
    sample_type              VARCHAR(20),                -- 'milt', 'tissue' (egg cryopreservation rare)
    storage_date             DATE,
    storage_location         VARCHAR(100)
);


-- ============================================================
-- DOMAIN 2: PRODUCTION PLANNING — DIMENSION / REFERENCE TABLES
-- ============================================================

CREATE TABLE production_area_zones (
    zone_id               VARCHAR(20) PRIMARY KEY,
    zone_name              VARCHAR(50),                 -- Norwegian production area name/number
    color_status            VARCHAR(10),                 -- 'green', 'yellow', 'red' (traffic light system)
    effective_start          DATE,
    effective_end            DATE
);

CREATE TABLE sites (
    site_id                VARCHAR(20) PRIMARY KEY,
    site_name               VARCHAR(100) NOT NULL,
    facility_type            VARCHAR(20) NOT NULL,        -- 'hatchery', 'sea_cage'
    region                   VARCHAR(50),
    zone_id                  VARCHAR(20) REFERENCES production_area_zones(zone_id), -- null for hatcheries
    latitude                 DECIMAL(9,6),
    longitude                DECIMAL(9,6),
    license_id                VARCHAR(30),
    mab_tonnes                DECIMAL(10,2)               -- Maximum Allowed Biomass; null for hatcheries
);

CREATE TABLE production_units (
    unit_id                VARCHAR(20) PRIMARY KEY,
    site_id                 VARCHAR(20) NOT NULL REFERENCES sites(site_id),
    unit_type                VARCHAR(20),                 -- 'tank' (hatchery), 'cage' (sea)
    capacity_m3               DECIMAL(10,2),
    max_density_kg_m3          DECIMAL(6,2),               -- engineering setpoint (hatchery) or legal cap (sea)
    biofilter_capacity_kg       DECIMAL(10,2)              -- hatchery/RAS only, null for sea cages
);


-- ============================================================
-- DOMAIN 2 (cont.): BATCHES — the central traceability entity
-- ============================================================

CREATE TABLE batches (
    batch_id                VARCHAR(20) PRIMARY KEY,
    family_id                VARCHAR(20) REFERENCES families(family_id),  -- links to genetics domain
    cohort_name               VARCHAR(50),
    species                   VARCHAR(50) DEFAULT 'Salmo salar',
    year_class                VARCHAR(20),
    unit_id                   VARCHAR(20) REFERENCES production_units(unit_id),  -- current unit
    current_stage             VARCHAR(20) DEFAULT 'hatchery', -- 'hatchery', 'sea', 'harvested'
    stocking_date              DATE,
    status                    VARCHAR(20) DEFAULT 'active'    -- 'active', 'harvested', 'culled'
);


-- ============================================================
-- DOMAIN 2 (cont.): PRODUCTION PLANNING — FACT TABLES
-- ============================================================

CREATE TABLE hatchery_stocking_events (
    stocking_id              VARCHAR(20) PRIMARY KEY,
    batch_id                  VARCHAR(20) NOT NULL REFERENCES batches(batch_id),
    unit_id                    VARCHAR(20) NOT NULL REFERENCES production_units(unit_id),
    event_date                 DATE NOT NULL,
    num_eggs_or_fry             INT,
    source_type                 VARCHAR(20)                -- 'own_broodstock', 'purchased_eyed_eggs'
);

CREATE TABLE smolt_transfer_events (
    transfer_id               VARCHAR(20) PRIMARY KEY,
    batch_id                   VARCHAR(20) NOT NULL REFERENCES batches(batch_id),
    from_unit_id                VARCHAR(20) NOT NULL REFERENCES production_units(unit_id), -- hatchery tank
    to_unit_id                   VARCHAR(20) NOT NULL REFERENCES production_units(unit_id), -- sea cage
    transfer_date                 DATE NOT NULL,
    transfer_weight_g              DECIMAL(8,2),
    num_fish                        INT,
    transport_do_mg_l                DECIMAL(5,2),
    transport_temp_c                  DECIMAL(4,1),
    transport_duration_hr              DECIMAL(5,2),
    post_transfer_mortality_pct         DECIMAL(5,2)         -- 7-14 day sensitivity window
);

CREATE TABLE growth_forecasts (
    forecast_id                VARCHAR(20) PRIMARY KEY,
    batch_id                    VARCHAR(20) NOT NULL REFERENCES batches(batch_id),
    forecast_date                 DATE NOT NULL,
    stage                          VARCHAR(20),             -- 'hatchery', 'sea'
    predicted_biomass_kg            DECIMAL(12,2),
    actual_biomass_kg                DECIMAL(12,2),
    tgc                                DECIMAL(6,4),          -- thermal growth coefficient
    degree_days                        DECIMAL(8,2)
);

CREATE TABLE harvest_events (
    harvest_id                  VARCHAR(20) PRIMARY KEY,
    batch_id                     VARCHAR(20) NOT NULL REFERENCES batches(batch_id),
    site_id                       VARCHAR(20) NOT NULL REFERENCES sites(site_id),
    harvest_date                   DATE NOT NULL,
    biomass_harvested_kg            DECIMAL(12,2),
    avg_weight_g                     DECIMAL(8,2),
    superior_pct                      DECIMAL(5,2),
    ordinary_pct                       DECIMAL(5,2),
    production_pct                      DECIMAL(5,2)
);

CREATE TABLE site_biomass_log (
    log_id                       VARCHAR(20) PRIMARY KEY,
    site_id                       VARCHAR(20) NOT NULL REFERENCES sites(site_id),
    log_date                       DATE NOT NULL,
    standing_biomass_kg              DECIMAL(12,2),
    pct_mab_utilized                  DECIMAL(5,2),
    fallow_status                      VARCHAR(20)          -- 'active', 'fallow', 'transitioning'
);


-- ============================================================
-- DOMAIN 3: FEED FORMULATION
-- ============================================================

CREATE TABLE feed_formulations (
    formulation_id             VARCHAR(20) PRIMARY KEY,
    formulation_name             VARCHAR(100),
    life_stage                    VARCHAR(20),            -- 'starter', 'grower', 'finisher'
    crude_protein_pct               DECIMAL(5,2),
    crude_fat_pct                     DECIMAL(5,2),
    digestible_energy_mj_kg            DECIMAL(5,2),
    astaxanthin_mg_kg                   DECIMAL(6,2),       -- legal cap 100 mg/kg (EU/EFSA)
    epa_dha_pct                           DECIMAL(5,2)
);

CREATE TABLE feed_batches (
    feed_batch_id               VARCHAR(20) PRIMARY KEY,
    formulation_id                VARCHAR(20) NOT NULL REFERENCES feed_formulations(formulation_id),
    manufacturer                    VARCHAR(50),
    production_date                   DATE,
    lot_number                          VARCHAR(30)
);

CREATE TABLE feed_deliveries (
    delivery_id                  VARCHAR(20) PRIMARY KEY,
    site_id                        VARCHAR(20) NOT NULL REFERENCES sites(site_id),
    feed_batch_id                   VARCHAR(20) NOT NULL REFERENCES feed_batches(feed_batch_id),
    delivery_date                     DATE NOT NULL,
    volume_tonnes                       DECIMAL(8,2)
);

CREATE TABLE feeding_events (
    feeding_id                    VARCHAR(20) PRIMARY KEY,
    batch_id                       VARCHAR(20) NOT NULL REFERENCES batches(batch_id),
    unit_id                          VARCHAR(20) NOT NULL REFERENCES production_units(unit_id),
    feed_batch_id                      VARCHAR(20) NOT NULL REFERENCES feed_batches(feed_batch_id),
    feeding_date                         DATE NOT NULL,
    planned_ration_kg                     DECIMAL(8,2),
    actual_ration_kg                       DECIMAL(8,2),
    feeding_method                           VARCHAR(20),   -- 'table_based' (hatchery), 'appetite_based' (sea)
    num_feedings                              INT
);

CREATE TABLE feed_performance_records (
    record_id                     VARCHAR(20) PRIMARY KEY,
    batch_id                       VARCHAR(20) NOT NULL REFERENCES batches(batch_id),
    feed_batch_id                    VARCHAR(20) NOT NULL REFERENCES feed_batches(feed_batch_id),
    period_start                       DATE,
    period_end                           DATE,
    fcr                                    DECIMAL(4,2),     -- economic feed conversion ratio
    sgr_pct_day                              DECIMAL(5,3),    -- specific growth rate
    adc_protein_pct                            DECIMAL(5,2)   -- apparent digestibility coefficient
);


-- ============================================================
-- DOMAIN 4: FISH HEALTH
-- ============================================================

CREATE TABLE welfare_observations (
    obs_id                        VARCHAR(20) PRIMARY KEY,
    batch_id                       VARCHAR(20) NOT NULL REFERENCES batches(batch_id),
    unit_id                          VARCHAR(20) REFERENCES production_units(unit_id),
    obs_date                           DATE NOT NULL,
    owi_score                           DECIMAL(3,1),        -- Operational Welfare Indicator score
    cortisol_ng_ml                        DECIMAL(6,2),
    condition_factor                        DECIMAL(4,2),
    mortality_count                           INT,
    mortality_pct                               DECIMAL(5,2)
);

-- Environment readings split by facility type, since the
-- underlying variables are genuinely different (engineered
-- vs. natural), not just different units of the same thing.

CREATE TABLE hatchery_environment_readings (
    reading_id                    VARCHAR(20) PRIMARY KEY,
    unit_id                         VARCHAR(20) NOT NULL REFERENCES production_units(unit_id),
    reading_timestamp                 TIMESTAMP NOT NULL,
    flow_rate_l_min                     DECIMAL(8,2),
    water_exchange_rate                   DECIMAL(6,2),      -- tank turnovers per day
    dissolved_oxygen_mg_l                   DECIMAL(5,2),
    temperature_c                             DECIMAL(4,1),
    ph                                           DECIMAL(3,1),
    tan_mg_l                                      DECIMAL(6,3),
    co2_mg_l                                        DECIMAL(5,2),
    photoperiod_hours                                 DECIMAL(4,1),
    biofilter_load_pct                                  DECIMAL(5,2)
);

CREATE TABLE netpen_environment_readings (
    reading_id                    VARCHAR(20) PRIMARY KEY,
    unit_id                         VARCHAR(20) NOT NULL REFERENCES production_units(unit_id),
    reading_timestamp                 TIMESTAMP NOT NULL,
    current_speed_cm_s                  DECIMAL(6,2),
    tidal_exchange_index                  DECIMAL(6,2),
    dissolved_oxygen_pct                    DECIMAL(5,2),
    temperature_c                             DECIMAL(4,1),
    salinity_psu                                DECIMAL(4,1),
    depth_m                                       DECIMAL(5,1)
);

CREATE TABLE treatments (
    treatment_id                  VARCHAR(20) PRIMARY KEY,
    batch_id                        VARCHAR(20) NOT NULL REFERENCES batches(batch_id),
    treatment_date                    DATE NOT NULL,
    treatment_type                      VARCHAR(50),         -- 'mechanical_delousing','medicinal','thermal','vaccine'
    dosage                                VARCHAR(50),
    withdrawal_period_days                  INT
);

CREATE TABLE disease_events (
    event_id                      VARCHAR(20) PRIMARY KEY,
    batch_id                        VARCHAR(20) NOT NULL REFERENCES batches(batch_id),
    unit_id                           VARCHAR(20) REFERENCES production_units(unit_id),
    event_date                         DATE NOT NULL,
    pathogen_type                        VARCHAR(50),
    lice_count_avg                         DECIMAL(4,2),      -- legal cap 0.5 / 0.2 seasonal
    diagnostic_method                        VARCHAR(30),     -- 'PCR','histology','ELISA','visual'
    diagnostic_result                          VARCHAR(100),
    is_notifiable                                BOOLEAN DEFAULT FALSE,
    treatment_id                                   VARCHAR(20) REFERENCES treatments(treatment_id)
);

CREATE TABLE fillet_quality_records (
    record_id                     VARCHAR(20) PRIMARY KEY,
    batch_id                        VARCHAR(20) NOT NULL REFERENCES batches(batch_id),
    harvest_id                        VARCHAR(20) REFERENCES harvest_events(harvest_id),
    sample_date                         DATE,
    quality_grade                         VARCHAR(20),        -- 'Superior','Ordinary','Production'
    color_score                             DECIMAL(4,1),      -- SalmoFan scale
    texture_score                             DECIMAL(4,1),
    gaping_severity                              VARCHAR(20),
    yield_pct                                     DECIMAL(5,2)
);

CREATE TABLE chemical_composition_records (
    record_id                     VARCHAR(20) PRIMARY KEY,
    batch_id                        VARCHAR(20) NOT NULL REFERENCES batches(batch_id),
    sample_date                       DATE,
    fat_pct                             DECIMAL(5,2),
    protein_pct                           DECIMAL(5,2),
    epa_dha_g_100g                          DECIMAL(5,2),
    astaxanthin_mg_kg                         DECIMAL(6,2),
    contaminant_dioxin_pcb_pg_teq_g             DECIMAL(6,3)   -- legal max ~3.5 pg WHO-TEQ/g
);


-- ============================================================
-- INDEXES — the traceability backbone gets hit on every query,
-- so index the join columns explicitly rather than relying on
-- the primary/foreign key constraints alone.
-- ============================================================

CREATE INDEX idx_batches_family        ON batches(family_id);
CREATE INDEX idx_batches_unit          ON batches(unit_id);
CREATE INDEX idx_production_units_site ON production_units(site_id);
CREATE INDEX idx_welfare_batch         ON welfare_observations(batch_id);
CREATE INDEX idx_disease_batch         ON disease_events(batch_id);
CREATE INDEX idx_fillet_batch          ON fillet_quality_records(batch_id);
CREATE INDEX idx_chemcomp_batch        ON chemical_composition_records(batch_id);
CREATE INDEX idx_feeding_batch         ON feeding_events(batch_id);
CREATE INDEX idx_feedperf_batch        ON feed_performance_records(batch_id);
CREATE INDEX idx_growth_batch          ON growth_forecasts(batch_id);
CREATE INDEX idx_harvest_batch         ON harvest_events(batch_id);
CREATE INDEX idx_transfer_batch        ON smolt_transfer_events(batch_id);
CREATE INDEX idx_hatchenv_unit_time    ON hatchery_environment_readings(unit_id, reading_timestamp);
CREATE INDEX idx_netpenenv_unit_time   ON netpen_environment_readings(unit_id, reading_timestamp);
CREATE INDEX idx_phenotype_individual  ON phenotype_records(individual_id);
CREATE INDEX idx_genotype_individual   ON genotype_records(individual_id);
CREATE INDEX idx_bv_individual         ON breeding_values(individual_id);
CREATE INDEX idx_families_sire_dam     ON families(sire_id, dam_id);
