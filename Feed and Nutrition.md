
## Fish Feed and Nutrition Data
Feed and nutrition data describe everything that goes into the feed and how that feed is designed, as distinct from fish health data, which describes what happens to the fish afterward.

The two domains are tightly linked: feed formulation is the primary lever farms pull to influence growth, disease resistance, and fillet composition, so this domain is really the "input" side of the story your fish health repository already covers on the "output" side.

This document breaks feed data into four sub-domains, following the structure: what it is → metrics → how it's collected → equipment → how it's used.

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
| **Sustainability** | Fish-in-fish-out ratio (FIFO): kg of wild fish used per kg of farmed fish produced |
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
| **Digestibility** | Apparent digestibility coefficient (ADC) |
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

Most binding numeric limits in feed formulation are additive/contaminant ceilings, not nutrient targets. Norway (via the EEA Agreement) directly applies EU feed additive authorizations and Directive 2002/32/EC contaminant limits where these are the most law-backed, auditable fields:

- **Astaxanthin / carotenoid sum**
- **Vitamin D3**
- **Dioxins in fish oil**

These are enforceable, auditable limits.

---

#### 2. Nutritional Specification Is Formulation Practice, Not Law

Nutritional specification (protein %, fat %, energy) is formulation practice, not law. There is no Norwegian statute saying salmon feed must be 38% protein. These numbers reflect what feed companies (Skretting, BioMar, Cargill/EWOS) and researchers (Nofima) currently formulate to achieve target growth and FCR.

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

Residue/MRL limits (like the 5 mg/kg canthaxanthin+adonirubin in muscle) are the bridge back to fillet chemical composition domain. 
| Domain | Role |
|--------|------|
| **Feed Formulation** | Input (additive inclusion rate) |
| **Chemical Composition** | Output (residue level in fillet) |

---
### References

Aas, T. S., Åsgård, T., & Ytrestøyl, T. (2022). Utilization of feed resources in the production of Atlantic salmon (*Salmo salar*) in Norway: An update for 2020. *Aquaculture Reports, 26*, Article 101316. https://doi.org/10.1016/j.aqrep.2022.101316

Aas, T. S., Ytrestøyl, T., & Åsgård, T. (2019). Utilization of feed resources in the production of Atlantic salmon (*Salmo salar*) in Norway: An update for 2016. *Aquaculture Reports, 15*, Article 100216. https://doi.org/10.1016/j.aqrep.2019.100216

Bruvoll, I., Krogdahl, Å., et al. (2024). Conceptualization of the Norwegian feed system of farmed Atlantic salmon. *Frontiers in Marine Science, 11*, Article 1378970. https://doi.org/10.3389/fmars.2024.1378970

European Food Safety Authority (EFSA). (n.d.). Safety and efficacy of a feed additive consisting of astaxanthin-rich *Phaffia rhodozyma* for salmon and trout (Igene Biotechnology, Inc.). *PMC*. https://pmc.ncbi.nlm.nih.gov/articles/PMC8867524/

European Food Safety Authority (EFSA). (n.d.). Safety for the environment of vitamin D3 for salmonids. *PMC*. https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7009116/

European Food Safety Authority (EFSA). (n.d.). Safety of astaxanthin for its use as a novel food in food supplements. *PMC*. https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7448075/

European Food Safety Authority (EFSA) Panel on Additives and Products or Substances used in Animal Feed. (2014). Scientific opinion on the safety and efficacy of synthetic astaxanthin as feed additive for salmon and trout, other fish, ornamental fish, crustaceans and ornamental birds. *EFSA Journal, 12*(6), Article 3724. https://doi.org/10.2903/j.efsa.2014.3724

European Food Safety Authority (EFSA) Panel on Additives and Products or Substances used in Animal Feed. (2019). Safety and efficacy of astaxanthin-dimethyldisuccinate (Carophyll® Stay-Pink 10%-CWS) for salmonids, crustaceans and other fish. *EFSA Journal*. https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7008914/

European Food Safety Authority (EFSA) Panel on Additives and Products or Substances used in Animal Feed. (2024). Assessment of the feed additive consisting of red carotenoid-rich *Paracoccus carotinifaciens* NITE SD 00017 for salmon and trout for the renewal of its authorisation (ENEOS Techno Materials Corporation). *EFSA Journal*. https://doi.org/10.2903/j.efsa.2024.8905

European Food Safety Authority (EFSA) Panel on Additives and Products or Substances used in Animal Feed. (2026). Assessment of the feed additive consisting of astaxanthin (2a161j) for fish, crustaceans and ornamental fish for the renewal of its authorisation (BASF SE, DSM Nutritional Products Ltd., JYB Europe BV, NHU EUROPE GmbH). *EFSA Journal*. https://doi.org/10.2903/j.efsa.2026.10036

European Food Safety Authority (EFSA) Panel on Contaminants in the Food Chain (CONTAM). (n.d.). Assessment of decontamination processes for dioxins and dioxin-like PCBs in fish oil by physical filtration with activated carbon. *PMC*. https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7010189/

European Food Safety Authority (EFSA) Panel on Contaminants in the Food Chain (CONTAM). (n.d.). Assessment of a decontamination process for dioxins and dioxin-like PCBs in fish oil by physical filtration with activated carbon. *PMC*. https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7010074/

European Union. (n.d.). Maximum levels for certain contaminants in food. *EUR-Lex*. https://eur-lex.europa.eu/EN/legal-content/summary/maximum-levels-for-certain-contaminants-in-food.html

Eurofins Scientific. (2020, February). EU maximum levels for dioxins and PCBs in feed additives. https://www.eurofins.de/food-analysis/food-news/food-testing-news/eu-maximum-levels-dioxins-pcbs-in-feed-additives/

Eurofins Scientific. (2024, February). Reduction of EU maximum levels for dioxins and PCBs in animal feed. https://www.eurofins.de/food-analysis/food-news/food-testing-news/maximum-levels-for-dioxins-and-dioxin-like-pcbs-in-feed-products/

Eurofins Scientific. (n.d.). Dioxins and PCBs in feed products: Maximum levels and action levels [PDF]. https://cdnmedia.eurofins.com/eurofins-germany/media/2853422/max_level_dioxins-pcbs_feed_en.pdf

FoodTimes. (2023, February 5). Dioxins and PCBs: New EU contamination thresholds in EU for meat, shellfish, eggs, dairy products. https://www.foodtimes.eu/food-system/dioxins-and-pcbs-new-eu-contamination-thresholds-in-eu-for-meat-shellfish-eggs-dairy-products/

Havforskningsinstituttet. (2026). *Overvåknings- og kartleggingsprogrammet for fiskefôr 2025* [Monitoring programme for fish feed 2025] (Rapport fra havforskningen 2026-41). Conducted on behalf of Mattilsynet. https://www.hi.no/hi/nettrapporter/rapport-fra-havforskningen-en-2026-41

Mattilsynet. (n.d.). *Krav til fôr* [Requirements for feed]. https://www.mattilsynet.no/for/krav-til-for

Measurlabs. (2025, September 16). Food contaminant testing by EU regulations. https://measurlabs.com/blog/eu-regulations-on-food-contaminants/

Nofima. (2021, December 1). Salmon feed more or less unchanged [Results summary of Aas, T. S., Ytrestøyl, T., & Åsgård, T., *Resource utilisation of Norwegian salmon farming in 2016*, funded by the Fishery and Aquaculture Industry Research Fund (FHF)]. https://nofima.com/results/salmon-feed-more-or-less-unchanged/

Nofima. (2026, January 29). Salmon feed is slowly changing [Results summary of the 2020 feed resource utilization update]. https://nofima.com/results/salmon-feed-is-slowly-changing/

Norway. (2002). *Forskrift om fôrvarer* [Regulation on feedingstuffs] (FOR-2002-11-07-1290). Landbruksdepartementet og Fiskeridepartementet. https://lovdata.no/dokument/SF/forskrift/2002-11-07-1290

Sørensen, M., Berge, G. M., Thomassen, M. S., Ruyter, B., Hatlen, B., Ytrestøyl, T., Aas, T. S., & Åsgård, T. (n.d.). Today's and tomorrow's feed ingredients in Norwegian aquaculture. Nofima. https://nofima.com/publication/1161977/

Ytrestøyl, T., Aas, T. S., & Åsgård, T. (2015). Utilisation of feed resources in production of Atlantic salmon (*Salmo salar*) in Norway. *Aquaculture, 448*, 365–374. https://doi.org/10.1016/j.aquaculture.2015.06.023
