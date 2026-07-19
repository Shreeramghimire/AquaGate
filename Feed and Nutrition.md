
## Fish Feed and Nutrition Data
Feed and nutrition data describe everything that goes into the feed and how that feed is designed, as distinct from fish health data, which describes what happens to the fish afterward.

The two domains are tightly linked: feed formulation is the primary lever farms pull to influence growth, disease resistance, and fillet composition, so this domain is really the "input" side of the story your fish health repository already covers on the "output" side.

This document breaks feed data into four sub-domains, following the same structure as before: what it is → metrics → how it's collected → equipment → how it's used.

---

## The Four Sub-Domains

| Sub-Domain | Scope |
|------------|-------|
| **Ingredient composition data** | What raw materials go into the feed, and in what proportions |
| **Nutritional specification data** | The nutrient profile the formulated feed is designed to deliver |
| **Physical/functional feed properties** | How the pellet behaves physically in water and in the fish |
| **Feed performance data** | How the feed actually performs once fed to fish |

### 1. Ingredient Composition Data

**What it is:**

The recipe itself: which raw materials used and at what inclusion rate, plus where those ingredients came from.

---

#### Key Metrics

| Category | Metrics |
|----------|---------|
| **Inclusion rates** | Inclusion rate of each ingredient (% of total feed by weight) |
| **Marine ingredients** | Fishmeal %, fish oil %, marine ingredient share |
| **Plant-based ingredients** | Soy protein concentrate, wheat gluten, rapeseed/canola oil, pea protein, etc. |
| **Novel/alternative ingredients** | Insect meal, single-cell protein, microalgae, byproduct meals |
| **Sustainability** | Fish-in-fish-out ratio (FIFO) — kg of wild fish used per kg of farmed fish produced |
| **Traceability** | Ingredient origin/traceability (supplier, region, certification status e.g. MarinTrust, RTRS soy) |

---

#### How It's Collected

- Feed mill formulation records (the actual recipe used per batch)
- Supplier certificates of analysis (CoA) for each raw material batch
- Traceability/procurement systems logging ingredient origin

---

#### Equipment

| Equipment | Purpose |
|-----------|---------|
| Feed formulation software | Least-cost linear programming tools (e.g., Format, Brill Formulation) |
| ERP/procurement systems | Tracking raw material batches |
| Near-infrared (NIR) spectroscopy | Rapid raw-material quality screening at intake |

---

#### How It's Used

- Calculating sustainability metrics (FIFO, marine ingredient dependency)
- Cost optimization (least-cost formulation subject to nutrient constraints)
- Regulatory/certification compliance (e.g., ASC feed ingredient sourcing rules)
- Root-cause analysis when linked to fillet composition or disease resistance issues


### 2. Nutritional Specification Data

**What it is:**

The target nutrient profile that the formulated feed is designed to deliver: this is the "nutritional contract" that the feed is built to.

---

#### Key Metrics

| Category | Metrics |
|----------|---------|
| **Proximate composition** | Crude protein (%), crude fat (%), moisture (%), ash (%), fiber (%) |
| **Energy** | Digestible energy (DE) and metabolizable energy (ME), in MJ/kg |
| **Amino acids** | Essential amino acid profile (lysine, methionine, threonine, etc., g/100g or % of protein) |
| **Fatty acids** | Omega-3 (EPA+DHA), omega-6, saturated/unsaturated ratio |
| **Micronutrients** | Vitamins (A, D, E, C), minerals (phosphorus, zinc, selenium) |
| **Functional additives** | Pigments (astaxanthin, canthaxanthin), prebiotics/probiotics, immunostimulants, organic acids, phytogenics |

---

#### How It's Collected

- Formulation software output (theoretical/calculated nutrient profile)
- Post-production lab verification (proximate + amino/fatty acid analysis on finished feed)
- Digestibility trials (apparent digestibility coefficients, ADC)

---

#### Equipment

| Equipment | Purpose |
|-----------|---------|
| Kjeldahl apparatus | Crude protein analysis |
| Soxhlet extraction | Crude fat analysis |
| Gas chromatography (GC) | Fatty acid profiling |
| HPLC | Amino acid and vitamin analysis |
| NIR/FTIR spectroscopy | Rapid finished-feed composition checks |
| Bomb calorimeter | Gross energy content |

---

#### How It's Used

- Life-stage-specific diet design (starter, grower, finisher feeds)
- Functional feed design (e.g., immune-boosting feeds ahead of expected disease pressure links directly to your disease-related data domain)
- Verifying label/formulation claims match the actual finished product
- Feeding data forward into fillet chemical composition modeling (Does a higher dietary omega-3 translate to higher flesh omega-3?)

### 3. Physical/Functional Feed Properties

**What it is:**

How the pellet behaves physically affects feed intake, waste, and water quality, so it's a genuine bridge to your water quality data domain.

---

#### Key Metrics

| Category | Metrics |
|----------|---------|
| **Size and shape** | Pellet size and shape (mm) |
| **Buoyancy** | Sinking rate / floating behavior (cm/s or categorical: floating, slow-sink, fast-sink) |
| **Water stability** | % mass retained after set time submerged |
| **Durability** | Pellet hardness/durability index (resistance to fragmentation during handling/feeding) |
| **Density** | Bulk density (kg/m³) |
| **Fines** | Dust/fines content (%) |

---

#### How It's Collected

- In-line sensors during extrusion (temperature, pressure, moisture)
- Post-production physical testing (durability tester, water stability soak tests)
- On-farm observation of feed waste/uneaten pellets

---

#### Equipment

| Equipment | Purpose |
|-----------|---------|
| Extruder with process control sensors | Temperature, screw speed, moisture injection monitoring |
| Pellet durability testers | Tumbling/vibration test rigs for hardness testing |
| Stopwatch/sensor rigs | Sinking rate measurement |
| Underwater cameras at feeding stations | Waste feed detection — links to automated feeding systems in your welfare data domain |

---

#### How It's Used

- Reducing feed waste (which also reduces organic loading on water quality)
- Matching pellet type to species/life stage and feeding system (surface feeders vs. bottom feeders)
- Optimizing feeding system calibration (feed delivered vs. feed actually consumed)

### 4. Feed Performance Data

**What it is:**

How the feed actually performs once it's fed to real fish, and this is where feed formulation data connects back to your fish health monitoring data.

---

#### Key Metrics

| Category | Metrics |
|----------|---------|
| **Feed efficiency** | Feed conversion ratio (FCR): kg feed fed / kg biomass gained |
| **Growth** | Specific growth rate (SGR, % body weight/day) |
| **Digestibility** | Apparent digestibility coefficient (ADC, % — per nutrient) |
| **Feed intake** | Feed intake rate (% body weight/day) |
| **Economics** | Economic feed conversion (feed cost per kg gain) |
| **Health correlation** | Health/disease outcome correlation (e.g., mortality or lice resistance under a functional feed trial) |

---

#### How It's Collected

- Farm-level feeding logs cross-referenced with biomass estimates (camera-based biomass estimation, bulk weighing)
- Controlled feeding trials (tank/cage-level, with known biomass and feed input)
- Digestibility trials using fecal collection (settling columns or stripping method)

---

#### Equipment

| Equipment | Purpose |
|-----------|---------|
| Automated feeders | Feed delivery logging |
| Biomass estimation cameras/sonar | Biomass measurement |
| Fecal collection systems | Digestibility trials |
| Farm management software | Linking feed batch ID to growth and health outcomes |

---

#### How It's Used

- Direct FCR/SGR benchmarking across feed formulations
- Feed-to-flesh traceability: linking a specific feed batch to final fillet composition and quality grade
- Feeding data into growth prediction models
- Evaluating functional feed ROI (e.g., does a lice-resistant feed additive reduce delousing costs enough to justify the premium?)

---

### Feed and Nutrition Data: Reference Ranges & Regulatory Status

Since Norway regulates feed largely through EU/EEA feed law (adopted domestically via the EEA Agreement) plus Mattilsynet enforcement, most "legal" limits here are EU-wide but binding in Norway.

---

### Legend

| Icon | Meaning |
|------|---------|
| 🔴 | **Legally binding** — EU/EFSA feed additive or contaminant regulation (applies in Norway via EEA), or Norwegian-specific feed regulation (Mattilsynet) |
| 🟡 | **Guideline/industry practice** — nutritional targets and formulation practice, not a numeric legal cap |
| ⚪ | **Certification-level** — voluntary standard (ASC, MarinTrust, etc.), stricter than law |

---

### 1. Ingredient Composition Data

| Metric | Unit | Typical / Acceptable Range | Type | Source / Basis |
|--------|------|---------------------------|------|----------------|
| Fishmeal inclusion | % of feed | Highly variable; declining in modern formulations | 🟡 Guideline | Industry formulation practice |
| Fish oil inclusion | % of feed | Declining; partially replaced by vegetable oils | 🟡 Guideline | Industry formulation practice |
| Marine ingredient share | % of feed | No legal minimum/maximum; linked to sustainability reporting | ⚪ Certification | ASC feed standard |
| Fish-in-fish-out (FIFO) ratio | kg wild fish / kg farmed fish | No legal cap; reported under certification | ⚪ Certification | ASC, MarinTrust |
| Ingredient traceability | — | No legal requirement to track origin, but required under certification | ⚪ Certification | MarinTrust, RTRS soy |

---

### 2. Nutritional Specification Data

| Metric | Unit | Typical / Acceptable Range | Type | Source / Basis |
|--------|------|---------------------------|------|----------------|
| Crude protein | % | 35–45% typical for salmonid grower feeds | 🟡 Guideline | Nutritional formulation practice |
| Crude fat | % | 25–35% typical for high-energy salmonid feeds | 🟡 Guideline | Nutritional formulation practice |
| EPA+DHA (omega-3) | % of feed | Variable; linked to fish oil inclusion | 🟡 Guideline | Formulation practice, label claims |
| Astaxanthin (pigment) | mg/kg feed | Max permitted inclusion in feed regulated at ~100 mg/kg feed | 🔴 Legally binding | EU/EFSA feed additive regulation |
| Vitamins & minerals | Various | Inclusion levels follow NRC or manufacturer recommendations | 🟡 Guideline | Nutritional formulation practice |
| Contaminants (dioxins, PCBs, heavy metals) | Various | Must comply with EU/EEA maximum levels for feed materials | 🔴 Legally binding | EU feed contaminants regulation |

---

### 3. Physical/Functional Feed Properties

| Metric | Unit | Typical / Acceptable Range | Type | Source / Basis |
|--------|------|---------------------------|------|----------------|
| Pellet size | mm | Species/life-stage dependent | 🟡 Guideline | Feed manufacturer recommendation |
| Water stability | % mass retained | No legal standard; operational target varies by feed type | 🟡 Guideline | Industry practice |
| Sinking rate | cm/s | Designed per species/feeding strategy | 🟡 Guideline | Feed design specification |
| Dust/fines content | % | Low; no legal standard | 🟡 Guideline | Feed quality control practice |

---

### 4. Feed Performance Data

| Metric | Unit | Typical / Acceptable Range | Type | Source / Basis |
|--------|------|---------------------------|------|----------------|
| FCR (Feed Conversion Ratio) | kg feed / kg gain | Target ~1.0–1.2 for modern salmon feeds | 🟡 Guideline | Industry performance benchmarking |
| SGR (Specific Growth Rate) | % body weight/day | Species/life-stage dependent | 🟡 Guideline | Growth performance literature |
| ADC (Apparent Digestibility Coefficient) | % | Nutrient-specific; high for protein/lipid, variable for others | 🟡 Guideline | Digestibility trial data |

---

### Key Takeaway

Most feed formulation metrics are **guidelines or industry standards**, not legally enforced limits. The main legally binding constraints relate to:

- **Feed additives** (e.g., astaxanthin, vitamins)
- **Contaminants** (e.g., dioxins, PCBs, heavy metals)
- **Certification requirements** (e.g., ASC, MarinTrust) which impose stricter voluntary limits on marine ingredient sourcing and traceability

---
### Feed Formulation Data: Key Regulatory Principles

---

#### 1. Binding Limits Are Additive/Contaminant Ceilings, Not Nutrient Targets

Most binding numeric limits in feed formulation are additive/contaminant ceilings, not nutrient targets. Norway (via the EEA Agreement) directly applies EU feed additive authorizations and Directive 2002/32/EC contaminant limits — these are the most law-backed, auditable fields:

- **Astaxanthin / carotenoid sum**
- **Vitamin D3**
- **Dioxins in fish oil**

These are enforceable, auditable limits.

---

#### 2. Nutritional Specification Is Formulation Practice, Not Law

Nutritional specification (protein %, fat %, energy) is formulation practice, not law. There is no Norwegian statute saying salmon feed must be 38% protein — these numbers reflect what feed companies (Skretting, BioMar, Cargill/EWOS) and researchers (Nofima) currently formulate to achieve target growth and FCR.

| Field | Treatment in Schema |
|-------|---------------------|
| Protein %, fat %, energy | `recommended_range` (not `legal_limit`) |

---

#### 3. FIFO and Marine Sourcing Are Sustainability Metrics, Not Regulation

FIFO ratio and marine ingredient sourcing are sustainability metrics, not regulatory ones — but they're increasingly gatekept by certification schemes (ASC, MarinTrust) rather than government law. They sit in the same "voluntary but commercially enforced" bucket as the ASC sea lice threshold.

| Metric | Status | Enforced By |
|--------|--------|-------------|
| FIFO ratio | ⚪ Voluntary | ASC, MarinTrust |
| Marine ingredient sourcing | ⚪ Voluntary | ASC, MarinTrust |
| Sea lice (ASC threshold) | ⚪ Voluntary | ASC Salmon Standard |

---

#### 4. Residue/MRL Limits Bridge Feed Formulation and Fillet Composition

Residue/MRL limits (like the 5 mg/kg canthaxanthin+adonirubin in muscle) are the bridge back to your fillet chemical composition domain. This is a good example of one regulatory number touching **two of your five original data domains**:

| Domain | Role |
|--------|------|
| **Feed Formulation** | Input (additive inclusion rate) |
| **Chemical Composition** | Output (residue level in fillet) |

