## Production Planning Data in Aquaculture

---

### Overview

Production planning data is the layer that turns biological reality (growth, health, feed) into operational and business decisions: when to stock, how much biomass to carry, when to harvest, and how to allocate capacity across sites and time.

Where fish health data tells us what's happening to the fish and feed formulation data tells us what we're feeding them, production planning data tells us **when and where** things happen, and it's the domain that ultimately determines whether the biological and economic sides of the farm line up.

This document breaks production planning into five sub-domains, following the same structure as before: what it is → metrics → how it's collected → equipment → how it's used.

---

### The Five Sub-Domains

| Sub-Domain | Scope |
|------------|-------|
| **Stocking & cohort planning data** | When and how many fish enter production |
| **Growth & biomass forecasting data** | Predicting how a cohort will grow over time |
| **Site & capacity planning data** | Where biomass sits, and how much a site/region can legally and physically hold |
| **Harvest planning data** | When and how fish come out of production |
| **Logistics & resource planning data** | The physical and human resources needed to execute the plan |

---

### 1. Stocking & Cohort Planning Data

**What it is:**

Data describing when new fish enter the production system, in what numbers, and as part of which cohort — the starting point of every production plan.

---

#### Key Metrics

| Category | Metrics |
|----------|---------|
| **Release details** | Smolt release date and number of smolts released per cohort |
| **Size at release** | Smolt weight/size at release (g) |
| **Cohort identification** | Cohort/batch ID and hatchery origin |
| **Year-class** | Year-class designation (e.g., "2026 spring generation") |
| **Stocking density** | Stocking density at release (fish/m³ or kg/m³) |
| **Variance** | Planned vs. actual stocking numbers |

---

#### How It's Collected

- Hatchery production records and delivery logs
- Farm management system entries at the time of transfer/stocking
- Wellboat transfer manifests

---

#### Equipment

| Equipment | Purpose |
|-----------|---------|
| Farm management software | Batch/cohort registration (e.g., Fishtalk, AKVA, Mercatus, Aquacloud) |
| Automated fish counters/graders | Transfer counting (e.g., VAKI counters) |
| RFID/PIT tagging systems | Cohort or individual tracking in research contexts |

---

#### How It's Used

- Anchoring every downstream dataset to a traceable cohort ID (the same `cohort_id` that ties into fish health and feed formulation schemas)
- Capacity planning — matching smolt supply to available site capacity
- Year-class risk diversification (spreading cohorts across sites/times to avoid single-point failure)

---

### 2. Growth & Biomass Forecasting Data

**What it is:**

Predictive data estimate how a cohort's biomass will develop over the production cycle, combining biological growth models with real-time measurements.

---

#### Key Metrics

| Category | Metrics |
|----------|---------|
| **Biomass** | Predicted vs. actual biomass (tonnes) over time |
| **Weight** | Individual/average fish weight trajectory (g or kg) |
| **Growth rate** | Specific growth rate (SGR, %/day) — used predictively here |
| **Temperature-normalized growth** | Thermal growth coefficient (TGC) — growth normalized for temperature |
| **Degree-days** | Degree-days accumulated (°C-days) — used to predict smoltification readiness |
| **Forecast error** | Biomass growth variance (% deviation from plan) |

---

#### How It's Collected

- Camera-based biomass estimation (stereo-vision or sonar-based fish counting/sizing)
- Periodic net-pen sampling and bulk weighing
- Growth model software fed by temperature, feed input, and historical growth curves
- Automated bulk-weighing systems on feed barges

---

#### Equipment

| Equipment | Purpose |
|-----------|---------|
| Stereo/mono underwater cameras | Biomass estimation (e.g., Observe Technologies, BioSort) |
| Echo-sounder/sonar systems | Biomass estimation |
| Automatic bulk weighers | Integrated with feeding systems |
| Growth modeling software | Often built into farm management platforms, using TGC/degree-day models |

---

#### How It's Used

- Feeding forward into feed procurement planning (how much feed will be needed, and when)
- Harvest timing decisions (projecting when a cohort reaches target slaughter weight)
- Site capacity/MAB (Maximum Allowed Biomass) compliance forecasting
- Reconciling forecast vs. actual growth to detect underlying health or feed issues early — direct link back to fish health and feed performance data

---

### 3. Site & Capacity Planning Data

**What it is:**

Data governing where biomass can legally and physically be held, and how production is spread across sites and regions.

---

#### Key Metrics

| Category | Metrics |
|----------|---------|
| **License capacity** | Site license capacity / Maximum Allowed Biomass (MAB, tonnes) |
| **Current biomass** | Current standing biomass per site (tonnes) and % of MAB utilized |
| **Fallowing** | Fallowing period status and duration (site rest between cohorts) |
| **Rotation** | Site rotation schedule (which sites are stocked, resting, or being harvested) |
| **Regional allocation** | Regional biomass allocation (production area / "traffic light" zone capacity) |
| **Coordinated fallowing** | Coordinated fallowing compliance across neighboring sites (biosecurity zones) |

---

#### How It's Collected

- Regulatory license records (site-specific MAB allocations)
- Farm management system tracking of standing biomass vs. license limits
- Regional/zone-level aggregation via industry or regulatory reporting systems

---

#### Equipment

| Equipment | Purpose |
|-----------|---------|
| Farm management/ERP systems | Multi-site biomass dashboards |
| GIS-based site mapping tools | Zone planning |
| Regulatory reporting portals | Biomass and fallowing compliance submissions |

---

#### How It's Used

- Ensuring legal compliance with biomass caps and fallowing rules (directly linked to the disease-related data domain, since fallowing/rotation is a core biosecurity tool)
- Long-term site rotation strategy to balance biosecurity risk against production continuity
- Regional capacity planning in coordination with area-based management schemes (e.g., Norway's traffic light system)

---

### 4. Harvest Planning Data

**What it is:**

Data governing when and how fish are taken out of production — the point where biological, market, and logistical planning all converge.

---

#### Key Metrics

| Category | Metrics |
|----------|---------|
| **Harvest targets** | Target harvest weight and date per cohort |
| **Actual harvest** | Actual harvest weight, date, and total biomass harvested |
| **Processing capacity** | Slaughter/processing plant capacity and scheduled throughput (tonnes/day) |
| **Market signals** | Market price signals and forward contracts influencing harvest timing |
| **Welfare compliance** | Pre-harvest starvation/withdrawal period compliance (fasting time before slaughter) |
| **Yield** | Yield at harvest (fillet yield %, grading distribution — linking to fillet quality domain) |

---

#### How It's Collected

- Harvest scheduling systems integrated with farm management software
- Wellboat and processing plant logistics scheduling
- Market/price data feeds (spot price indices, forward contract terms)
- Processing plant intake records (actual weight/grade delivered)

---

#### Equipment

| Equipment | Purpose |
|-----------|---------|
| Harvest scheduling modules | Within farm management platforms |
| Wellboats | Onboard biomass/weight sensors |
| Processing plant intake scales | Automated grading lines (shared with fillet quality domain) |

---

#### How It's Used

- Matching supply to market demand and price windows
- Optimizing processing plant utilization (avoiding bottlenecks or idle capacity)
- Verifying welfare compliance during the harvest process (starvation period, transport duration limits)
- Post-harvest reconciliation — comparing planned vs. actual yield and grade distribution to refine future growth/harvest models

---

### 5. Logistics & Resource Planning Data

**What it is:**

The physical and human resources required to execute the production plan — feed delivery, transport, and labor.

---

#### Key Metrics

| Category | Metrics |
|----------|---------|
| **Feed logistics** | Feed delivery schedule and volume (tonnes, by site and date) — links directly to feed formulation data |
| **Transport** | Wellboat scheduling and route planning (for smolt transfer, delousing operations, and harvest transport) |
| **Labor** | Labor/crew scheduling per site and operation type |
| **Maintenance** | Equipment maintenance schedules (feeding systems, nets, sensors) |
| **Fuel/energy** | Fuel/energy consumption for vessels and site operations |

---

#### How It's Collected

- Feed mill order and delivery systems
- Wellboat operator scheduling platforms
- Farm workforce management/scheduling software
- Maintenance logs (planned and unplanned)

---

#### Equipment

| Equipment | Purpose |
|-----------|---------|
| Feed silo level sensors | Triggering automatic reorder |
| Fleet management/routing software | Wellboats and service vessels |
| Workforce scheduling software | Labor planning |
| CMMS | Computerized maintenance management systems for equipment upkeep |

---

#### How It's Used

- Ensuring feed supply chain continuity (avoiding stockouts that would disrupt the growth forecast)
- Coordinating delousing/treatment operations with wellboat availability (links to disease-related data)
- Cost planning and operational efficiency benchmarking
- Contingency planning for weather/logistics disruptions common in Norwegian coastal operations
