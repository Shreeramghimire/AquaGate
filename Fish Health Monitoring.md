# Fish Health Monitoring

Fish health data is one of the richest and most heterogeneous data streams generated on a fish farm. It spans everything from real-time water chemistry to post-harvest fillet composition, and it's collected through a mix of sensors, manual sampling, imaging, and laboratory analysis.

This document organizes fish health data into five core domains, and for each one covers:

- What it is
- Key metrics
- How it's collected
- Equipment used
- How it's applied

### Fish Health Data Domains

| Domain | Scope |
|--------|-------|
| **Welfare data** | Behavior, stress, physical condition indicators |
| **Water quality data** | Physicochemical environment the fish live in |
| **Disease-related data** | Pathogens, parasites, mortality, biosecurity |
| **Fillet quality data** | Texture, color, defects, yield |
| **Chemical composition data** | Proximate analysis, fatty acids, contaminants |

### 1. Welfare Data

**What it is:**

Indicators of the fish's physiological and behavioral state — a proxy for stress, comfort, and overall wellbeing, often guided by frameworks like the "Five Freedoms" or OIE/WOAH welfare indicators.

---

### 2. Water Quality Data

**What it is:**

The physicochemical properties of the rearing environment, which directly drive fish physiology, growth, and disease susceptibility.

---

#### Key Metrics

| Category | Metrics |
|----------|---------|
| **Dissolved oxygen** | DO (mg/L or % saturation) |
| **Temperature** | °C |
| **pH** | pH units |
| **Nitrogen compounds** | Ammonia (NH₃/NH₄⁺), nitrite (NO₂⁻), nitrate (NO₃⁻) |
| **Salinity** | Salinity / conductivity |
| **Turbidity** | Turbidity / total suspended solids (TSS) |
| **Carbon** | CO₂ and alkalinity |
| **Flow** | Flow rate and water exchange rate (in RAS/flow-through systems) |

---

#### How It's Collected

- Continuous in-situ sensor monitoring (multiparameter probes)
- Periodic grab-sample lab testing (titration, spectrophotometry)
- Remote/satellite sensing for open-water sites (sea temperature, algal blooms)

---

#### Equipment

| Equipment | Purpose |
|-----------|---------|
| Multiparameter sondes/probes | Continuous monitoring (YSI, Hach, In-Situ Aqua TROLL, etc.) |
| DO and pH probes | Dissolved oxygen and pH measurement with SCADA/telemetry |
| Spectrophotometers | Nutrient analysis |
| Titration kits | Lab-based water chemistry analysis |
| IoT buoys and floating sensor arrays | Cage/pond system monitoring |
| Automated water quality loggers | Cloud data upload and remote access |

---

#### How It's Used

- Real-time alerts and automated aeration/water exchange control
- Correlating water parameter excursions with growth dips or mortality
- Predictive modeling for harmful algal blooms or hypoxia events
- Optimizing RAS (recirculating aquaculture system) efficiency

#### Key Metrics

| Category | Metrics |
|----------|---------|
| **Operational Welfare Indicators (OWIs)** | Fin damage, skin lesions, scale loss, eye condition, gill status |
| **Behavioral indicators** | Swimming activity, schooling cohesion, feeding response, avoidance behavior |
| **Physiological stress markers** | Plasma cortisol, glucose, lactate |
| **Growth performance** | Condition factor (K), specific growth rate (SGR), feed conversion ratio (FCR) |
| **Mortality** | Mortality rate and cause-coded mortality logs |

---

#### How It's Collected

- Visual/manual scoring during routine sampling (crowding, dip-netting)
- Continuous video observation of shoal behavior
- Blood sampling for stress hormone assays
- Automated activity tracking via tags or acoustic tracking

---

#### Equipment

| Equipment | Purpose |
|-----------|---------|
| Underwater cameras (mono/stereo) | Video observation and behavioral analysis |
| Video analytics software | Automated behavioral scoring |
| Acoustic telemetry tags and hydrophone receivers | Track movement and activity |
| Accelerometer/biologger tags | Individual fish movement tracking |
| Portable blood analyzers | Point-of-care lactate/glucose measurement |
| ELISA kits | Cortisol assay in lab |

---

#### How It's Used

- Early detection of chronic or acute stress before mortality events
- Feeding into automated feeding systems (behavior-based feed adjustment)
- Benchmarking welfare against certification schemes (e.g., ASC, GlobalG.A.P.)
- Training computer-vision models for automated welfare scoring at scale

### 3. Disease-Related Data

**What it is:**

Data capturing presence, spread, and impact of pathogens, parasites, and disease outbreaks — central to biosecurity and epidemiological modeling.

---

#### Key Metrics

| Category | Metrics |
|----------|---------|
| **Pathogen load** | Pathogen load / prevalence (bacterial, viral, parasitic — e.g., sea lice counts) |
| **Mortality** | Mortality and morbidity rates, time-series of daily mortality |
| **Pathology** | Histopathology scores (gill, liver, kidney lesions) |
| **Diagnostics** | PCR/qPCR Ct values, ELISA titers, culture results |
| **Interventions** | Treatment/intervention records (medications, vaccinations, dosages) |
| **Biosecurity** | Biosecurity compliance metrics (fallowing periods, disinfection logs) |

---

#### How It's Collected

- Routine health surveillance sampling (necropsy, gill/skin swabs)
- Sea lice counts via manual or image-based counting
- Diagnostic lab submission (PCR, histology, bacteriology)
- Farm management system logging of treatments and events

---

#### Equipment

| Equipment | Purpose |
|-----------|---------|
| qPCR machines | Pathogen detection and quantification |
| Diagnostic test kits | Lateral flow, ELISA for rapid screening |
| Microscopes | Parasite and histopathology examination |
| Automated sea lice counting cameras | Stereo-vision cage systems for lice monitoring |
| Necropsy kits | Post-mortem examination |
| Sample preservation equipment | Formalin, RNAlater for tissue storage |
| Farm management software | Event logging (e.g., Fishtalk, AKVA, Mercatus) |

---

#### How It's Used

- Outbreak detection and early warning systems
- Epidemiological modeling of disease spread across sites/regions
- Informing vaccination programs and treatment scheduling
- Regulatory reporting and certification/traceability compliance

### 4. Fillet Quality Data

**What it is:**

Post-harvest measurements describing the physical and sensory attributes of the fish fillet, key for grading, pricing, and market acceptance.

---

#### Key Metrics

| Category | Metrics |
|----------|---------|
| **Texture** | Firmness, shear force |
| **Color** | SalmoFan score (for salmonids), L*a*b* color values |
| **Fat** | Fat distribution and marbling |
| **Defects** | Gaping (muscle separation), bruising, blood spots |
| **Yield** | Fillet weight as % of body weight |
| **Uniformity** | Size/shape uniformity |

---

#### How It's Collected

- Sensory panel evaluation and standardized grading charts
- Instrumental texture analysis on sampled fillets
- Machine vision grading lines at processing plants
- Manual defect inspection during processing

---

#### Equipment

| Equipment | Purpose |
|-----------|---------|
| Texture analyzers / penetrometers | Shear force and firmness testing |
| Colorimeters and SalmoFan color cards | Objective color measurement |
| Automated optical/X-ray grading systems | Processing line quality inspection |
| Near-infrared (NIR) sensors | Fat and composition estimation |
| 3D/vision-based yield estimation cameras | Yield and size measurement |

---

#### How It's Used

- Automated grading and sorting for market/price segmentation
- Linking on-farm rearing conditions (diet, density, water quality) to end-product quality
- Quality control and defect-rate tracking across processing batches
- Feedback loop to improve feed formulation and harvest timing

### 5. Chemical Composition Data

**What it is:**

Detailed biochemical/nutritional profile of the fish flesh — relevant to nutrition science, product labeling, and feed R&D.

---

#### Key Metrics

| Category | Metrics |
|----------|---------|
| **Proximate composition** | Moisture, crude protein, crude fat, ash |
| **Fatty acids** | Fatty acid profile (e.g., omega-3 EPA/DHA content) |
| **Amino acids** | Amino acid profile |
| **Micronutrients** | Astaxanthin/pigment content, vitamins (A, D, E), minerals |
| **Contaminants** | Heavy metals, dioxins, PCBs (for food safety) |

---

#### How It's Collected

- Laboratory wet chemistry (Kjeldahl for protein, Soxhlet for fat extraction)
- Chromatography for fatty acid and amino acid profiling
- Spectroscopy-based rapid estimation on fillet samples

---

#### Equipment

| Equipment | Purpose |
|-----------|---------|
| Gas chromatography (GC) and HPLC systems | Fatty acid and amino acid analysis |
| NIR and FTIR spectroscopy | Rapid, non-destructive composition estimates |
| Kjeldahl apparatus | Protein analysis |
| Soxhlet extractors | Fat extraction |
| Atomic absorption spectroscopy (AAS) or ICP-MS | Contaminant and mineral analysis |

---

#### How It's Used

- Nutritional labeling and health-claim substantiation (e.g., omega-3 content)
- Feed formulation optimization (linking feed inputs to flesh composition)
- Food safety compliance and contaminant monitoring
- Comparative studies (wild vs. farmed, species/strain benchmarking)

### Fish Health Data: Reference Ranges & Regulatory Limits (Norway)

---

### 1. Welfare Data

| Metric | Unit | Acceptable Range (Norway) | Type | Source / Basis |
|--------|------|---------------------------|------|----------------|
| Stocking density (sea cage) | kg/m³ | ≤ 25 | 🔴 Legal max | Akvakulturdriftsforskriften (2004) |
| Stocking density (observed industry avg.) | kg/m³ | 40–50 (commonly exceeds legal cap under exemptions) | 🟡 Reported | Rosten et al., 2007 |
| Welfare score (skin, fin, eye) | OWI score (0–3 or categorical) | No numeric legal threshold; scored via Nofima's Welfare Indicator protocol | 🟡 Guideline | Noble et al., 2018 (Nofima WFI) |
| Plasma cortisol (acute stress) | ng/mL | Baseline ~5–20; >50–100 indicates acute stress | 🟡 Guideline | Aquaculture physiology literature |
| Condition factor (K) | dimensionless | 1.0–1.4 typical healthy range for salmon | 🟡 Guideline | Standard fisheries biology reference |
| Mortality rate | % per period (weekly/monthly) | No fixed cap, but must be recorded and reported; sustained elevated mortality triggers inspection | 🔴 Reporting obligation | Akvakulturdriftsforskriften |

---

### 2. Water Quality Data

| Metric | Unit | Acceptable Range (Norway) | Type | Source / Basis |
|--------|------|---------------------------|------|----------------|
| Dissolved oxygen (saturation) | % saturation | ≥ 80% recommended; welfare risk emerging below 70%; severe hypoxia risk < 60% | 🟡 Guideline | Havforskningsinstituttet (HI); Skagseth et al., 2025 |
| Temperature | °C | Species/life-stage dependent; ~8–14°C optimal growth range for Atlantic salmon at sea | 🟡 Guideline | Standard salmon physiology literature |
| CO₂ (dissolved) | mg/L | ≤ 10–15 mg/L (restrictive operational limit) | 🟡 Guideline | Thorarensen & Farrell, 2011 |
| Total ammonia nitrogen (TAN) | mg N/L | Recommended kept low; safe operational target generally < 1–2 mg/L un-ionized | 🟡 Guideline | Norwegian Food Safety Authority / Fivelstad et al. |
| pH | pH units | ~6.5–8.0 (species/life-stage tolerant range) | 🟡 Guideline | Nofima freshwater intake studies |
| Labile (inorganic) aluminium | µg/L | ≤ 10 µg/L (in low-pH water) | 🟡 Guideline | Norwegian freshwater intake water quality studies |
| Salinity | ‰ (PSU) | Full seawater ~34‰ for grow-out; life-stage dependent | 🟡 Guideline | Standard production practice |
| Specific water flow (RAS/flow-through) | L/kg fish/min | 0.2–0.6 typical operational range depending on system and season | 🟡 Guideline | Nofima RAS/S-CCS studies |

---

### 3. Disease-Related Data

| Metric | Unit | Acceptable Range (Norway) | Type | Source / Basis |
|--------|------|---------------------------|------|----------------|
| Adult female sea lice per fish (general) | avg. lice/fish/farm | < 0.5 at all times | 🔴 Legal max | Forskrift om lakselusbekjempelse |
| Adult female sea lice per fish (spring wild-smolt migration window) | avg. lice/fish/farm | < 0.2 (window varies by region: wk 16–21 Trøndelag & south; wk 21–26 Nordland & north) | 🔴 Legal max | Forskrift om lakselusbekjempelse (2017 amendment) |
| Adult female sea lice per fish (ASC certification) | avg. lice/fish/farm | < 0.1 during sensitive out-migration period | ⚪ Certification | ASC Salmon Standard |
| Sea lice counting frequency | counts/week | Weekly if water temp > 4°C; biweekly if ≤ 4°C; min. 10–20 fish/cage sampled | 🔴 Legal requirement | Forskrift om lakselusbekjempelse |
| PCR/qPCR diagnostic result | Ct value | Lab/pathogen-specific; no universal numeric standard, interpreted per assay | 🟡 Lab-specific | Veterinærinstituttet diagnostic protocols |
| Notifiable disease status (e.g., ILA, PD, IPN) | presence/absence | Zero-tolerance — must be reported immediately on suspicion/confirmation | 🔴 Legal (notifiable) | Norwegian Food Safety Authority (Mattilsynet) list |
| Biomass cap per license/production area | tonnes MAB (Maximum Allowed Biomass) | Site/region-specific, tied to the "Traffic Light System" (green/yellow/red risk zones) | 🔴 Legal | Produksjonsområdeforskriften |

---

### 4. Fillet Quality Data

| Metric | Unit | Acceptable Range (Norway) | Type | Source / Basis |
|--------|------|---------------------------|------|----------------|
| Quality grade | categorical: Superior / Ordinary / Production | Superior: no significant defects; Ordinary: minor defects; Production: fails above criteria — cannot be exported un-processed | 🔴 Legal grading system | Kvalitetsforskriften for fisk og fiskevarer |
| Superior-grade typical yield (industry) | % of harvest | Historically ~90–97%, though recent years show ~30–33% falling to Production grade | 🟡 Reported (varies by year/site) | SalmonBusiness / SeafoodSource industry reporting (2024) |
| Color (pigmentation) | SalmoFan™ score (1–34 scale) | ~24–26 typically associated with premium/superior appearance | 🟡 Industry guideline (not law) | Industry grading practice |
| Gaping / melanin deposits / bruising | categorical severity | Presence of any disqualifies from Superior; degree determines Ordinary vs. Production | 🔴 Legal grading criterion | Kvalitetsforskriften |

---

### 5. Chemical Composition Data

| Metric | Unit | Acceptable Range (Norway) | Type | Source / Basis |
|--------|------|---------------------------|------|----------------|
| Crude fat | % of fillet weight | Typically 12–20% in farmed Atlantic salmon (feed-dependent) | 🟡 Typical range (not regulated as a "limit") | Nutritional composition literature |
| Crude protein | % of fillet weight | ~18–22% typical | 🟡 Typical range | Nutritional composition literature |
| Omega-3 (EPA+DHA) | g/100g fillet | No legal minimum in Norway, but often reported/labeled; typical farmed salmon ~1–2 g/100g | 🟡 Typical/labeling | Nutrition science, food labeling practice |
| Astaxanthin (pigment) | mg/kg flesh | Max permitted inclusion in feed regulated (EU/EFSA feed additive limits apply, ~100 mg/kg feed); flesh concentration not separately capped | 🔴 Feed additive regulated | EU/EFSA feed additive regulation (adopted in Norway via EEA) |
| Contaminants (dioxins/PCBs, heavy metals) | ng/kg or mg/kg | Must comply with EU/EEA maximum levels (e.g., dioxins+DL-PCBs ≤ 3.5 pg WHO-TEQ/g fresh weight for fish) | 🔴 Legal (food safety) | EU Regulation on contaminants, applied via EEA |

---

### Legend

| Icon | Meaning |
|------|---------|
| 🔴 | Legal requirement / mandatory limit |
| 🟡 | Guideline / recommended range |
| ⚪ | Certification requirement / voluntary standard |
