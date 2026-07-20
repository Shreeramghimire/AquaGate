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

Data describing when new fish enter the production system, in what numbers, and as part of which cohort: the starting point of every production plan.

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

### 5. Logistics & Resource Planning Data

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
