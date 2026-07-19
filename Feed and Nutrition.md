
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
- Functional feed design (e.g., immune-boosting feeds ahead of expected disease pressure — links directly to your disease-related data domain)
- Verifying label/formulation claims match actual finished product
- Feeding data forward into fillet chemical composition modeling (does higher dietary omega-3 translate to higher flesh omega-3?)

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

