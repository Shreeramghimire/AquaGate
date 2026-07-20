### Production Planning Data in Aquaculture

---

#### Overview

Production planning in salmon aquaculture is really two distinct planning problems that happen to share a supply chain.

**Smolt production planning** happens in the hatchery — a closed, engineered freshwater system where you control flow, water exchange, and density directly, the way you'd manage a factory process.

**On-growing production planning** happens in sea net pens — an open system embedded in a fjord, where you select a site based on its natural hydrology and then plan around conditions you can monitor but not control.

This distinction matters enough that it should shape the schema, not just the prose. A hatchery's "acceptable flow rate" is an engineering setpoint you dial in; a net pen's "acceptable current speed" is a site-selection criterion you live with. Treating both as the same kind of variable would blur a genuinely important difference.

This document restructures production planning around that split, with a bridging section for the handoff between them (smolt transfer).

---

#### Stage Comparison

| Stage | Environment | What you control | What you select for |
|-------|-------------|------------------|---------------------|
| **Smolt production planning** | Closed tanks, freshwater, engineered | Flow rate, water exchange, density, photoperiod, temperature | Hatchery location (raw water source quality) |
| **Smolt transfer** | Transport (wellboat/truck) | Timing, transport water quality | — |
| **On-growing production planning** | Open net pens, seawater, natural system | Stocking density (within site limits), feeding, harvest timing | Site location (natural flushing/current regime) |

---

## 1. Smolt Production Planning (Hatchery)

**What it is:**

Planning the freshwater phase — from egg/fry through parr to smolt — in a closed facility where the operator engineers the water environment directly, typically via flow-through or recirculating aquaculture systems (RAS).

---

### 1a. Stocking & Cohort Planning (Hatchery-Specific)

#### Key Metrics

| Category | Metrics |
|----------|---------|
| **Egg/fry intake** | Egg/fry intake numbers and source (own broodstock vs. purchased eyed eggs) |
| **Cohort identification** | Cohort ID, year-class, hatch date |
| **First-feeding** | Planned vs. actual first-feeding date |
| **Tank allocation** | Tank allocation per cohort (which tank, at what life stage) |

#### How It's Collected

- Hatchery management records
- Egg delivery manifests
- First-feeding logs

#### Equipment

| Equipment | Purpose |
|-----------|---------|
| Hatchery management software | Modules within farm-wide platforms (e.g., Fishtalk/AKVA), configured for hatchery workflows |
| Incubator trays | Automated counting |

---

### 1b. Hydrological & Environmental Planning Parameters (Engineered)

*This is the core of what makes hatchery planning different — these are **control variables**, not just monitored conditions.*

#### Key Metrics

| Category | Metrics |
|----------|---------|
| **Tank capacity** | Tank volume (m³) and tank count allocated per cohort |
| **Flow** | Flow rate (L/min or L/kg fish/min) — a direct engineering setpoint |
| **Water exchange** | Water exchange rate (tank volume turnovers per hour/day) |
| **Specific flow** | Specific water flow relative to biomass (L/kg/min) — scales with fish growth, actively re-planned as biomass increases |
| **Stocking density** | Stocking density (kg/m³) — typically 40–80 kg/m³ in RAS (vs. 25 kg/m³ legal cap in sea cages) |
| **Dissolved oxygen** | DO (mg/L or % saturation) — actively dosed, not just monitored |
| **Temperature** | Temperature (°C) — actively controlled, manipulated to accelerate/delay smoltification |
| **Photoperiod** | Hours light/dark — a planning lever unique to hatcheries, used to control smoltification timing |
| **Water chemistry** | pH, total ammonia nitrogen (TAN), CO₂ — managed via biofilter capacity and water exchange rate |
| **Biofilter** | Biofilter capacity and loading (for RAS) — a hard capacity constraint, independent of physical tank volume |

#### How It's Collected

- Continuous sensor monitoring integrated with automated dosing/control systems (oxygen injection, degassing, UV/ozone disinfection)
- Flow meters and pump control logs
- Biofilter performance monitoring (ammonia removal efficiency)

#### Equipment

| Equipment | Purpose |
|-----------|---------|
| RAS control systems | Integrated flow, oxygen, temperature, and biofilter management |
| Flow meters, oxygen cones/injectors, degassing towers | Environmental control |
| UV and ozone disinfection units | Water treatment |
| Biofilters | Moving bed, trickling, or fluidized sand with automated loading sensors |
| Photoperiod control | Lighting systems on timers |

#### How It's Used

- Planning is **proactive**: you decide the flow rate, density, and photoperiod schedule in advance to hit a target smolt weight and smoltification date — fundamentally different from on-growing planning
- Capacity planning is driven by **biofilter/engineering limits**, not a legal MAB-style cap
- Smoltification readiness scheduling is directly steered by manipulating temperature and photoperiod

---

### 1c. Growth & Smoltification Staging

#### Key Metrics

| Category | Metrics |
|----------|---------|
| **Degree-days** | Degree-days accumulated toward smoltification readiness |
| **Weight** | Smolt weight trajectory (g) — target vs. actual |
| **Smoltification indicators** | Gill Na⁺/K⁺-ATPase activity, silvering, condition factor change |
| **Transfer timing** | Planned vs. actual smolt release ("transfer") date |

#### How It's Collected

- Periodic sampling and lab assays (gill enzyme activity)
- Bulk weighing
- Visual smoltification scoring (silvering)

#### Equipment

| Equipment | Purpose |
|-----------|---------|
| Lab assay kits | Gill Na⁺/K⁺-ATPase activity |
| Bulk weighers | Weight measurement |
| Visual scoring protocols | Smoltification staging |

#### How It's Used

- Timing the transfer to sea to coincide with both **biological readiness** (smoltification window) and **site/market planning** on the on-growing side — the direct link into Section 2

---
### 1d. Feeding Plan (Hatchery)

**What it is:**

The day-to-day ration and feeding schedule decisions for cohorts in tanks — a planning task distinct from feed formulation (what's in the feed) and feed logistics (getting feed delivered) — this is "how much, how often, adjusted for what."

---

#### Key Metrics

| Category | Metrics |
|----------|---------|
| **Feeding rate** | % body weight/day — typically high for fry/parr (up to 3–8%), tapering down as fish approach smolt size |
| **Ration** | Feed ration per tank (kg/day), calculated from biomass estimate × feeding rate |
| **Meals** | Number of feedings/meals per day |
| **Temperature adjustment** | Temperature-adjusted feeding table — feeding rate is typically looked up from a standardized table indexed by water temperature and fish size (e.g., manufacturer feeding tables from Skretting/BioMar); since temperature is a controlled variable here, the table itself becomes a planning input |
| **Feeder settings** | Automated feeder settings (dispense interval, belt speed) |
| **FCR tracking** | Tank-level feed conversion tracking — measurable in near real time in a closed system, since both intake and biomass are tightly monitored |

---

#### How It's Collected

- Automated feeder logs
- Periodic bulk-weighing for biomass estimates
- Standardized temperature/size feeding-rate lookup tables

---

#### Equipment

| Equipment | Purpose |
|-----------|---------|
| Automated belt or disc feeders | Programmable schedules |
| Biomass estimation equipment | Bulk weighing or camera-based |

---

#### How It's Used

- Sets the daily feed order at hatchery scale
- Because the environment is controlled, a gap between planned and actual intake is a **fast, reliable early-warning signal** — feeding response is one of the first things to drop when fish are stressed, linking directly back to your fish health welfare domain

---

### 1e. Growth & Smoltification Staging

**What it is:**

Tracking the biological development of smolts toward seawater readiness — the key milestone that determines when fish are ready to transfer to sea net pens.

---

#### Key Metrics

| Category | Metrics |
|----------|---------|
| **Degree-days** | Degree-days accumulated toward smoltification readiness |
| **Weight** | Smolt weight trajectory (g) — target vs. actual |
| **Smoltification indicators** | Gill Na⁺/K⁺-ATPase activity, silvering, condition factor change |
| **Transfer timing** | Planned vs. actual smolt release ("transfer") date |

---

#### How It's Collected

- Periodic sampling and lab assays (gill enzyme activity)
- Bulk weighing
- Visual smoltification scoring (silvering)

---

#### Equipment

| Equipment | Purpose |
|-----------|---------|
| Lab assay kits | Gill Na⁺/K⁺-ATPase activity measurement |
| Bulk weighers | Weight measurement |
| Visual scoring protocols | Smoltification staging |

---

#### How It's Used

- Timing the transfer to sea to coincide with both biological readiness (smoltification window) and site/market planning on the on-growing side
- The direct link between hatchery planning and on-growing production planning

## 2. The Handoff: Smolt Transfer Data

**What it is:**

The data bridging the two planning stages — a single, high-stakes event where responsibility moves from an engineered system to a natural one.

---

#### Key Metrics

| Category | Metrics |
|----------|---------|
| **Transfer details** | Transfer date and method (wellboat vs. truck-to-wellboat) |
| **Fish data** | Transfer weight and number of fish |
| **Transport water quality** | Oxygen, temperature, ammonia during transit |
| **Logistics** | Transport duration |
| **Destination** | Destination site ID and net pen assignment |
| **Post-transfer** | Post-transfer mortality (first 7–14 days, a standard sensitivity window) |

#### How It's Collected

- Wellboat sensor logs
- Farm management system transfer records
- Post-transfer mortality tracking

#### Equipment

| Equipment | Purpose |
|-----------|---------|
| Wellboat onboard water quality monitoring | Transport water quality |
| Fish counters/graders | Loading and unloading counting |

#### How It's Used

- This is the natural place in your schema for a **stage transition field** — the same fish, same `batch_id`, but the record marks the switch from `facility_type = hatchery` to `facility_type = sea_cage`, and from engineered to natural hydrology

---

## 3. On-Growing Production Planning (Net Pen)

**What it is:**

Planning the seawater grow-out phase in open net pens sited in fjords or coastal waters — a natural system you plan around, not inside.

---

### 3a. Site Selection & Hydrological Planning Parameters (Natural)

*This is the on-growing equivalent of section 1b, and the contrast is the point: these are **conditions you select for and monitor**, not variables you set.*

#### Key Metrics

| Category | Metrics |
|----------|---------|
| **Current** | Current speed and direction (cm/s) — determines natural flushing/waste dispersal; a site-selection criterion |
| **Tidal exchange** | Tidal exchange pattern — natural water turnover |
| **Bathymetry** | Water depth and site bathymetry |
| **Dissolved oxygen** | Natural DO levels (% saturation) — monitored, with mitigation (supplemental aeration, site rotation) rather than direct control |
| **Temperature** | Temperature profile and thermocline depth — seasonal stratification affects cage placement/depth |
| **Salinity** | Salinity profile |
| **Carrying capacity** | Site carrying capacity — a function of natural flushing rate, not a fixed engineering number |
| **Stocking density** | Stocking density (kg/m³) — legally capped at 25 kg/m³ in Norwegian sea cages |

#### How It's Collected

- Pre-site-selection hydrographic surveys (current meters, bathymetric mapping)
- Continuous in-situ sensor monitoring during operation (buoys, cage-mounted sondes)
- Regulatory environmental monitoring (MOM-B/C sediment monitoring under Norwegian rules)

#### Equipment

| Equipment | Purpose |
|-----------|---------|
| Current meters and ADCPs | Site assessment |
| Multiparameter sondes/buoys | Ongoing monitoring |
| Satellite/remote sensing | Broader fjord conditions (temperature, algal bloom risk) |

#### How It's Used

- **Site selection** itself is a planning decision made before stocking, based on hydrology — this has no real hatchery equivalent
- Ongoing monitoring feeds into **reactive planning**: mitigating a bloom or hypoxia event, rather than preventing it via control

---

### 3b. Site & Capacity Planning (Regulatory)

#### Key Metrics

| Category | Metrics |
|----------|---------|
| **License capacity** | Site license Maximum Allowed Biomass (MAB, tonnes) — the sea-cage equivalent of hatchery biofilter capacity, but set by regulation rather than engineering |
| **Biomass utilization** | Standing biomass vs. % MAB utilized |
| **Fallowing** | Fallowing period status and site rotation schedule |
| **Regional allocation** | Regional/production-area allocation (Norway's traffic light zones) |

*(This sub-domain carries over largely unchanged, since it's inherently a sea-cage/open-system concept — hatcheries don't have an MAB or traffic-light equivalent.)*

---
### 3c. Feeding Plan (Net Pen)

**What it is:**

Cage-level ration and feeding schedule planning — the on-growing equivalent of Section 1d, but noticeably more adaptive, because you're feeding into an environment you don't control.

---

#### Key Metrics

| Category | Metrics |
|----------|---------|
| **Feeding rate** | % body weight/day — lower than hatchery rates, typically ~0.5–1.5% depending on fish size and ambient temperature |
| **Daily ration** | Daily feed ration per cage (kg/day), calculated from standing biomass estimate × feeding rate |
| **Feeding events** | Number/duration of feeding events per day |
| **Appetite-based adjustment** | Many modern systems use underwater cameras with waste-pellet/appetite detection to cut feeding automatically when appetite drops; environmental appetite suppression (temperature swings, low oxygen, algal bloom stress) can't be engineered away the way it can in a hatchery — you have to detect and react rather than prevent |
| **Current adjustment** | Current-adjusted feed spread pattern — feed distribution across the cage needs adjusting for current strength so pellets don't drift out of reach before fish can eat them |

---

#### How It's Collected

- Automated feed barges with camera-based appetite/waste feedback loops
- Feed delivery logs cross-referenced with biomass estimates

---

#### Equipment

| Equipment | Purpose |
|-----------|---------|
| Feed barges/silos | Feed storage and delivery |
| Pneumatic feed distribution systems | Feed delivery across cages |
| Underwater feeding cameras | AI-based appetite/waste detection (e.g., Observe Technologies, AKVA feeding control systems) |
| Current sensors | Feed spread pattern adjustment |

---

#### How It's Used

This is the primary lever farms use to manage FCR in real time — actual intake vs. planned ration is one of the most closely watched daily numbers on a farm:

| Outcome | Consequence |
|---------|-------------|
| **Overfeeding** | Wastes money and adds organic loading at the site (linking back to your water quality domain) |
| **Underfeeding** | Costs growth and extends time to harvest |

The adaptivity of net pen feeding — responding to current, appetite, and environmental conditions — is what makes it fundamentally different from hatchery feeding, where the environment is controlled and feeding tables can be followed more rigidly.

### 3d. Growth & Biomass Forecasting (Open System)

#### Key Metrics

| Category | Metrics |
|----------|---------|
| **Biomass** | Predicted vs. actual biomass, using TGC models calibrated to ambient (not controlled) sea temperature |
| **Growth rate** | Specific growth rate (SGR) |
| **Forecast error** | Biomass growth variance — typically wider than hatchery forecasts |

#### How It's Used

- Same forecasting logic as hatcheries, but with **materially higher uncertainty** because temperature — the dominant driver of TGC — is **observed, not set**
---

### 3e. Harvest Planning Data

**What it is:**

Data governing when and how fish are taken out of production is the point where biological, market, and logistical planning all converge.

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

### 3f. Logistics & Resource Planning Data

**What it is:**

The physical and human resources required to execute the production plan include feed delivery, transport, and labor.

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

---

## References

Aas, T. S., Åsgård, T., & Ytrestøyl, T. (2022). Utilization of feed resources in the production of Atlantic salmon (*Salmo salar*) in Norway: An update for 2020. *Aquaculture Reports, 26*, Article 101316. https://doi.org/10.1016/j.aqrep.2022.101316

Aas, T. S., Ytrestøyl, T., & Åsgård, T. (2019). Utilization of feed resources in the production of Atlantic salmon (*Salmo salar*) in Norway: An update for 2016. *Aquaculture Reports, 15*, Article 100216. https://doi.org/10.1016/j.aqrep.2019.100216

Aquaculture Stewardship Council. (2022). *Regulatory processes for setting sensitive-period sea-lice thresholds in major salmon producer jurisdictions*. https://www.asc-aqua.org/wp-content/uploads/2022/03/Regulatory-Processes-for-Setting-Sensitive-Period-and-Sea-lice-Thresholds-in-Major-Salmon-Producer-Jurisdictions.pdf

Assessing the benefits and challenges of recirculating aquaculture systems (RAS) for Atlantic salmon production. (2024). https://doi.org/10.1080/23308249.2024.2433581

Bruvoll, I., Krogdahl, Å., et al. (2024). Conceptualization of the Norwegian feed system of farmed Atlantic salmon. *Frontiers in Marine Science, 11*, Article 1378970. https://doi.org/10.3389/fmars.2024.1378970

Calabrese, S., et al. (2017). Stocking density limits for post-smolt Atlantic salmon (*Salmo salar* L.) with emphasis on production performance and welfare. *Aquaculture, 468*, 363–370. https://doi.org/10.1016/j.aquaculture.2016.10.010

Effects of fish density on growth and smoltification in intensive production of Atlantic salmon (*Salmo salar* L.). (2009). *ScienceDirect*. https://www.sciencedirect.com/science/article/abs/pii/S004484860900516X

Estimating stocking weights for Atlantic salmon to grow to market size at novel aquaculture sites with extreme temperatures. (n.d.). *ResearchGate*. https://www.researchgate.net/publication/370799771

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

Eurofins Scientific. (n.d.). *Dioxins and PCBs in feed products: Maximum levels and action levels*. https://cdnmedia.eurofins.com/eurofins-germany/media/2853422/max_level_dioxins-pcbs_feed_en.pdf

Factors associated with baseline mortality in Norwegian Atlantic salmon farming. (2021). *Scientific Reports*. https://doi.org/10.1038/s41598-021-93874-6

Field validation of growth models used in Atlantic salmon farming. (2014). *Aquaculture*. https://www.sciencedirect.com/science/article/abs/pii/S0044848614001100

Fish Farming Expert. (2020, February 4). Traffic lights signal production rise in Norway. https://www.fishfarmingexpert.com/norway-salmon-traffic-light-system/traffic-lights-signal-production-rise-in-norway/1304745

FoodTimes. (2023, February 5). Dioxins and PCBs: New EU contamination thresholds in EU for meat, shellfish, eggs, dairy products. https://www.foodtimes.eu/food-system/dioxins-and-pcbs-new-eu-contamination-thresholds-in-eu-for-meat-shellfish-eggs-dairy-products/

Frontiers in Marine Science. (2021). Planktonic and parasitic sea lice abundance on three commercial salmon farms in Norway throughout a production cycle. *Frontiers in Marine Science, 8*, Article 615567. https://doi.org/10.3389/fmars.2021.615567

Gismervik, K., Nielsen, K. V., Lind, M. B., & Viljugrein, H. (2017). *Mekanisk avlusing med FLS-avlusersystem — dokumentasjon av fiskevelferd og effekt mot lus* [Mechanical delousing with the FLS system — documentation of fish welfare and effect on lice] (Veterinærinstituttets rapportserie 6-2017). Norwegian Veterinary Institute. https://www.vetinst.no/rapporter-og-publikasjoner/rapporter/2017/mekanisk-avlusing-dokumentasjon-av-fiskevelferd-og-effekt-mot-lus

Gismervik, K., Nielsen, K. V., Lind, M. B., Viljugrein, H., et al. (2020). Comparison of Norwegian health and welfare regulatory frameworks in salmon and chicken production. *Reviews in Aquaculture*. https://doi.org/10.1111/raq.12440

Global Salmon Initiative. (2025, August 27). Norway's vision for aquaculture: Key takeaways from the white paper. https://globalsalmoninitiative.org/en/our-progress/blog/norways-vision-for-aquaculture-key-takeaways-from-the-white-paper/

Grefsrud, E. S., et al. (2021). *Risikorapport norsk fiskeoppdrett 2021 — risikovurdering* [Risk assessment of Norwegian fish farming 2021] (Rapport fra havforskningen 2021-8). Havforskningsinstituttet. https://www.hi.no/hi/nettrapporter/rapport-fra-havforskningen-2021-8

Grøntvedt, R. N., et al. (2015). *Thermal de-licing of salmonid fish — Documentation of fish welfare and effect* (Norwegian Veterinary Institute's Report series 13-2015). https://www.vetinst.no/rapporter-og-publikasjoner/rapporter/2015/thermal-de-licing-of-salmonid-fish-documentation-of-fish-welfare-and-effect

Handeland, S. O., Imsland, A. K., & Stefansson, S. O. (2008). The effect of temperature and fish size on growth, feed intake, food conversion efficiency and stomach evacuation rate of Atlantic salmon post-smolts. *Aquaculture, 283*(1–4), 36–42. https://doi.org/10.1016/j.aquaculture.2008.06.042

Havforskningsinstituttet. (2019). *Fish welfare*. https://www.hi.no/en/hi/temasider/aquaculture/fish-welfare

Havforskningsinstituttet. (2022). *Annual report on health monitoring of wild anadromous salmonids in Norway 2021* (Rapport fra havforskningen 2022-6). https://www.hi.no/hi/nettrapporter/rapport-fra-havforskningen-en-2022-6

Havforskningsinstituttet. (2026). *Overvåknings- og kartleggingsprogrammet for fiskefôr 2025* [Monitoring programme for fish feed 2025] (Rapport fra havforskningen 2026-41). Conducted on behalf of Mattilsynet. https://www.hi.no/hi/nettrapporter/rapport-fra-havforskningen-en-2026-41

Important influent-water quality parameters at freshwater production sites in two salmon producing countries. (2009). *ResearchGate*. https://www.researchgate.net/publication/230852002

Iwama, G. K., & Tautz, A. F. (1981). A simple growth model for salmonids in hatcheries. *Canadian Journal of Fisheries and Aquatic Sciences, 38*(6), 649–656. https://doi.org/10.1139/f81-087

Jobling, M. (2003). The thermal growth coefficient (TGC) model of fish growth: A cautionary note. *Aquaculture Research, 34*(7), 581–584. https://doi.org/10.1046/j.1365-2109.2003.00859.x

Lerøy Seafood Group. (n.d.). *Sea lice*. https://www.leroyseafood.com/en/sustainability/sustainability-library-2024/fish-health-and-fish-welfare/sea-lice/

Mattilsynet. (n.d.). *Krav til fôr* [Requirements for feed]. https://www.mattilsynet.no/for/krav-til-for

Measurlabs. (2025, September 16). Food contaminant testing by EU regulations. https://measurlabs.com/blog/eu-regulations-on-food-contaminants/

Ministry of Trade, Industry and Fisheries. (2008). *[Regulatory basis establishing Maximum Allowable Biomass as the core production metric]*. Norway.

Ministry of Trade, Industry and Fisheries. (2012). *[Regulation establishing the 0.2 adult female sea lice/fish threshold during spring smolt migration (weeks 16–22) and 0.5 threshold for the remainder of the year]*. Norway.

Misimi, E., et al. (2016). A 3D machine vision system for quality grading of Atlantic salmon. *ScienceDirect*. https://doi.org/10.1016/j.compag.2016.02.007

Noble, C., Gismervik, K., Iversen, M. H., Kolarevic, J., Nilsson, J., Stien, L. H., et al. (2018). *Welfare indicators for farmed Atlantic salmon: Tools for assessing fish welfare* [FISHWELL project report]. Nofima. https://www.nofima.no/fishwell/english


Nofima. (2026, January 29). Salmon feed is slowly changing [Results summary of the 2020 feed resource utilization update]. https://nofima.com/results/salmon-feed-is-slowly-changing/

Norway. (1999). *Norwegian quality regulations relating to fish and fishery products*. FAOLEX. https://faolex.fao.org/docs/pdf/nor13807E.pdf

Norway. (2002). *Forskrift om fôrvarer* [Regulation on feedingstuffs] (FOR-2002-11-07-1290). Landbruksdepartementet og Fiskeridepartementet. https://lovdata.no/dokument/SF/forskrift/2002-11-07-1290

Norway. (2004). *Forskrift om drift av akvakulturanlegg* [Regulation on the operation of aquaculture facilities] (akvakulturdriftsforskriften) (FOR-2004-12-22). Fiskeri- og kystdepartementet. https://faolex.fao.org/docs/pdf/nor76392.pdf

Norway. (2020). *Forskrift om bekjempelse av lakselus i akvakulturanlegg* [Regulation on combating salmon lice in aquaculture facilities] (Forskrift om lakselusbekjempelse). Lovdata. https://lovdata.no/dokument/SF/forskrift/2012-12-05-1272

Quality assessment of fish vaccine data in the Norwegian Veterinary Prescription Register (VetReg). (2025). *BMC Veterinary Research*. https://doi.org/10.1186/s12917-024-04460-7

RASTECH Magazine. (2025, July 7). Norway reopens land-based aquaculture licensing, introduces new rules. https://www.rastechmagazine.com/norway-reopens-land-based-aquaculture-licensing-introduces-new-rules/

SalmonBusiness. (2024, April 9). How does Norway's traffic light system for salmon farming work? https://www.salmonbusiness.com/how-does-norways-traffic-light-system-for-salmon-farming-work/

SalmonBusiness. (2025, October 31). New regulation opens path to keep some production in traffic-light red areas. https://www.salmonbusiness.com/new-regulation-opens-path-to-keep-some-production-in-traffic-light-red-areas/

Sands (law firm). (2024). *The traffic light system for 2024–2026*. https://www.sands.no/en/news/the-traffic-light-system-for-2024-2026/

Saraiva, J. L., Rachinas-Lopes, P., & Arechavala-Lopez, P. (2022). Finding the "golden stocking density": A balance between fish welfare and farmers' perspectives. *Frontiers in Veterinary Science, 9*, Article 930221. https://doi.org/10.3389/fvets.2022.930221

Sea-lice regulation in salmon-farming countries: How science shapes policies for protecting wild salmon. (2023). *Aquaculture International*. https://link.springer.com/article/10.1007/s10499-023-01270-w

SeafoodSource. (2024, April 22). Norway's "production-grade" salmon controversy driving up prices. https://www.seafoodsource.com/news/processing-equipment/norways-production-grade-salmon-controversy-driving-up-prices

Skagseth, Ø., Oppedal, F., Søiland, H., & Hvas, M. (2025). Measured oxygen levels in Norwegian waters and implications for future offshore Atlantic salmon aquaculture. *Scientific Reports, 15*(1), 1–13. https://doi.org/10.1038/s41598-025-12697-x

Slette, et al. (2025). Biosafety in Norwegian aquaculture—Risks and measures in RAS facilities and well-boats. *Reviews in Aquaculture*. https://doi.org/10.1111/raq.12979

Sommerset, I., et al. (2020). *The health situation in Norwegian aquaculture 2019*. Norwegian Veterinary Institute. https://www.vetinst.no/rapporter-og-publikasjoner/rapporter/2020/fiskehelserapporten-2019

Sommerset, I., et al. (2022). *Fiskehelserapporten 2021* [Fish health report 2021] (Norwegian Veterinary Institute report 2a/2022). https://www.vetinst.no/rapporter-og-publikasjoner/rapporter/2022/fiskehelserapporten-2021

Sommerset, I., Wiik-Nielsen, J., Oliveira, V. H. S., Moldal, T., Haukaas, A., & Brun, E. (2024). *Fiskehelserapporten 2023* [The Norwegian fish health report 2023] (Veterinærinstituttets rapportserie nr. 8a/2024). Norwegian Veterinary Institute. https://www.vetinst.no/rapporter-og-publikasjoner/rapporter/2024/fiskehelserapporten-2023

Sørensen, M., Berge, G. M., Thomassen, M. S., Ruyter, B., Hatlen, B., Ytrestøyl, T., Aas, T. S., & Åsgård, T. (n.d.). *Today's and tomorrow's feed ingredients in Norwegian aquaculture*. Nofima. https://nofima.com/publication/1161977/

Standard Norge. (n.d.). *Quality of fish and fish products* [NS 9401, NS 9402 and related standards]. https://standard.no/en/sectors/fisheries-and-aquaculture/quality-of-fish-and-fish-products/

The biological requirements for post-smolt Atlantic salmon in closed-containment systems. (2010). *Aquaculture*. https://www.sciencedirect.com/science/article/abs/pii/S0044848610008161

The economic impact of decreased mortality and increased growth associated with preventing, replacing or improving current methods for delousing farmed Atlantic salmon in Norway. (2023). *ScienceDirect*. https://www.sciencedirect.com/science/article/pii/S016758772300226X

The impact of production intensity on water quality in oxygen enriched, floating enclosures for post-smolt salmon culture. (2017). *ScienceDirect*. https://www.sciencedirect.com/science/article/abs/pii/S0144860916302266

The traffic light system: Is it a solution to a nonpoint pollution problem? (2024). *Maritime Studies*. https://doi.org/10.1080/13657305.2024.2301993

TheFishSite. (2019, June 7). Stocking density: Does it matter? https://thefishsite.com/articles/stocking-density-does-it-matter

We Are Aquaculture. (2024, March 13). Norway sets new aquaculture traffic lights: Still two red areas. https://weareaquaculture.com/news/aquaculture/norway-sets-new-aquaculture-traffic-lights-still-two-red-areas

Why and how to regulate Norwegian salmon production? The history of Maximum Allowable Biomass (MAB). (2021). *Aquaculture*. https://www.sciencedirect.com/science/article/abs/pii/S0044848621008073

World Aquaculture Society. (2024, February). Stringent measures: Norwegian regulations on sea lice. *World Aquaculture Magazine*. https://www.was.org/Magazine/2024/02/67/

Ytrestøyl, T., Aas, T. S., & Åsgård, T. (2015). Utilisation of feed resources in production of Atlantic salmon (*Salmo salar*) in Norway. *Aquaculture, 448*, 365–374. https://doi.org/10.1016/j.aquaculture.2015.06.023
