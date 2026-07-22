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

Indicators of the fish's physiological and behavioral state, a proxy for stress, comfort, and overall well-being, often guided by frameworks like the "Five Freedoms"(Hunger, Discomfort, Pain/Disease, Normal Behavior, and Fear/Distress) or OIE/WOAH welfare indicators.

---

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
| DO and pH probes | Dissolved oxygen and pH measurement with SCADA(Supervisory Control and Data Acquisition)/telemetry |
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

Data capturing presence, spread, and impact of pathogens, parasites, and disease outbreaks, central to biosecurity and epidemiological modeling.

---

#### Key Metrics

| Category | Metrics |
|----------|---------|
| **Pathogen load** | Pathogen load/prevalence (bacterial, viral, parasitic, e.g. sea lice counts) |
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

Detailed biochemical/nutritional profile of the fish flesh, relevant to nutrition science, product labeling, and feed R&D.

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
| Mortality rate | % per period (weekly/monthly) | No fixed cap, but must be recorded and reported; sustained elevated mortality triggers inspection | 🔴 Reporting obligation | Akvakulturdriftsforskriften(https://lovdata.no/dokument/SF/forskrift/2008-06-17-822) |

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
| Notifiable disease status (e.g., ILA, PD, IPN) | presence/absence | Zero-tolerance; must be reported immediately on suspicion/confirmation | 🔴 Legal (notifiable) | Norwegian Food Safety Authority (Mattilsynet) list |
| Biomass cap per license/production area | tonnes MAB (Maximum Allowed Biomass) | Site/region-specific, tied to the "Traffic Light System" (green/yellow/red risk zones) | 🔴 Legal | Produksjonsområdeforskriften(https://lovdata.no/dokument/SF/forskrift/2017-01-16-61) |

---

### 4. Fillet Quality Data

| Metric | Unit | Acceptable Range (Norway) | Type | Source / Basis |
|--------|------|---------------------------|------|----------------|
| Quality grade | categorical: Superior / Ordinary / Production | Superior: no significant defects; Ordinary: minor defects; Production: fails above criteria — cannot be exported unprocessed | 🔴 Legal grading system | Kvalitetsforskriften for fisk og fiskevarer |
| Superior-grade typical yield (industry) | % of harvest | Historically ~90–97%, though recent years show ~30–33% falling to Production grade | 🟡 Reported (varies by year/site) | SalmonBusiness / SeafoodSource industry reporting (2024) |
| Color (pigmentation) | SalmoFan™ score (1–34 scale) | ~24–26 typically associated with premium/superior appearance | 🟡 Industry guideline (not law) | Industry grading practice |
| Gaping / melanin deposits / bruising | categorical severity | Presence of any disqualifies from Superior; degree determines Ordinary vs. Production | 🔴 Legal grading criterion | Kvalitetsforskriften (https://lovdata.no/dokument/SF/forskrift/2013-06-28-844) |

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

---
### References

Aas, T. S., Åsgård, T., & Ytrestøyl, T. (2022). Utilization of feed resources in the production of Atlantic salmon (*Salmo salar*) in Norway: An update for 2020. *Aquaculture Reports, 26*, Article 101316. https://doi.org/10.1016/j.aqrep.2022.101316

Aas, T. S., Ytrestøyl, T., & Åsgård, T. (2019). Utilization of feed resources in the production of Atlantic salmon (*Salmo salar*) in Norway: An update for 2016. *Aquaculture Reports, 15*, Article 100216. https://doi.org/10.1016/j.aqrep.2019.100216

Aquaculture Stewardship Council. (2022). *Regulatory processes for setting sensitive-period sea-lice thresholds in major salmon producer jurisdictions*. https://www.asc-aqua.org/wp-content/uploads/2022/03/Regulatory-Processes-for-Setting-Sensitive-Period-and-Sea-lice-Thresholds-in-Major-Salmon-Producer-Jurisdictions.pdf

Assessing the benefits and challenges of recirculating aquaculture systems (RAS) for Atlantic salmon production. (2024). https://doi.org/10.1080/23308249.2024.2433581

Bruvoll, I., Krogdahl, Å., et al. (2024). Conceptualization of the Norwegian feed system of farmed Atlantic salmon. *Frontiers in Marine Science, 11*, Article 1378970. https://doi.org/10.3389/fmars.2024.1378970

Calabrese, S., et al. (2017). Stocking density limits for post-smolt Atlantic salmon (*Salmo salar* L.) with emphasis on production performance and welfare. *Aquaculture, 468*, 363–370. https://doi.org/10.1016/j.aquaculture.2016.10.010

Effects of fish density on growth and smoltification in intensive production of Atlantic salmon (*Salmo salar* L.). (2009). *ScienceDirect*. https://www.sciencedirect.com/science/article/abs/pii/S004484860900516X

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

FoodTimes. (2023, February 5). Dioxins and PCBs: New EU contamination thresholds in EU for meat, shellfish, eggs, dairy products. https://www.foodtimes.eu/food-system/dioxins-and-pcbs-new-eu-contamination-thresholds-in-eu-for-meat-shellfish-eggs-dairy-products/

Frontiers in Marine Science. (2021). Planktonic and parasitic sea lice abundance on three commercial salmon farms in Norway throughout a production cycle. *Frontiers in Marine Science, 8*, Article 615567. https://doi.org/10.3389/fmars.2021.615567

Gismervik, K., Nielsen, K. V., Lind, M. B., & Viljugrein, H. (2017). *Mekanisk avlusing med FLS-avlusersystem — dokumentasjon av fiskevelferd og effekt mot lus* [Mechanical delousing with the FLS system — documentation of fish welfare and effect on lice] (Veterinærinstituttets rapportserie 6-2017). Norwegian Veterinary Institute. https://www.vetinst.no/rapporter-og-publikasjoner/rapporter/2017/mekanisk-avlusing-dokumentasjon-av-fiskevelferd-og-effekt-mot-lus

Gismervik, K., Nielsen, K. V., Lind, M. B., Viljugrein, H., et al. (2020). Comparison of Norwegian health and welfare regulatory frameworks in salmon and chicken production. *Reviews in Aquaculture*. https://doi.org/10.1111/raq.12440

Global Salmon Initiative. (2025, August 27). Norway's vision for aquaculture: Key takeaways from the white paper. https://globalsalmoninitiative.org/en/our-progress/blog/norways-vision-for-aquaculture-key-takeaways-from-the-white-paper/

Grefsrud, E. S., et al. (2021). *Risikorapport norsk fiskeoppdrett 2021 — risikovurdering* [Risk assessment of Norwegian fish farming 2021] (Rapport fra havforskningen 2021-8). Havforskningsinstituttet. https://www.hi.no/hi/nettrapporter/rapport-fra-havforskningen-2021-8

Grøntvedt, R. N., et al. (2015). *Thermal de-licing of salmonid fish — Documentation of fish welfare and effect* (Norwegian Veterinary Institute's Report series 13-2015). https://www.vetinst.no/rapporter-og-publikasjoner/rapporter/2015/thermal-de-licing-of-salmonid-fish-documentation-of-fish-welfare-and-effect

Havforskningsinstituttet. (2019). *Fish welfare*. https://www.hi.no/en/hi/temasider/aquaculture/fish-welfare

Havforskningsinstituttet. (2022). *Annual report on health monitoring of wild anadromous salmonids in Norway 2021* (Rapport fra havforskningen 2022-6). https://www.hi.no/hi/nettrapporter/rapport-fra-havforskningen-en-2022-6

Havforskningsinstituttet. (2026). *Overvåknings- og kartleggingsprogrammet for fiskefôr 2025* [Monitoring programme for fish feed 2025] (Rapport fra havforskningen 2026-41). Conducted on behalf of Mattilsynet. https://www.hi.no/hi/nettrapporter/rapport-fra-havforskningen-en-2026-41

Important influent-water quality parameters at freshwater production sites in two salmon producing countries. (2009). *ResearchGate*. https://www.researchgate.net/publication/230852002

Lerøy Seafood Group. (n.d.). *Sea lice*. https://www.leroyseafood.com/en/sustainability/sustainability-library-2024/fish-health-and-fish-welfare/sea-lice/

Mattilsynet. (n.d.). *Krav til fôr* [Requirements for feed]. https://www.mattilsynet.no/for/krav-til-for

Measurlabs. (2025, September 16). Food contaminant testing by EU regulations. https://measurlabs.com/blog/eu-regulations-on-food-contaminants/

Misimi, E., et al. (2016). A 3D machine vision system for quality grading of Atlantic salmon. *ScienceDirect*. https://doi.org/10.1016/j.compag.2016.02.007

Noble, C., Gismervik, K., Iversen, M. H., Kolarevic, J., Nilsson, J., Stien, L. H., et al. (2018). *Welfare indicators for farmed Atlantic salmon: Tools for assessing fish welfare* [FISHWELL project report]. Nofima. https://www.nofima.no/fishwell/english

Nofima. (2021, December 1). Salmon feed more or less unchanged [Results summary of Aas, T. S., Ytrestøyl, T., & Åsgård, T., *Resource utilisation of Norwegian salmon farming in 2016*, funded by the Fishery and Aquaculture Industry Research Fund (FHF)]. https://nofima.com/results/salmon-feed-more-or-less-unchanged/

Nofima. (2026, January 29). Salmon feed is slowly changing [Results summary of the 2020 feed resource utilization update]. https://nofima.com/results/salmon-feed-is-slowly-changing/

Norway. (1999). *Norwegian quality regulations relating to fish and fishery products*. FAOLEX. https://faolex.fao.org/docs/pdf/nor13807E.pdf

Norway. (2002). *Forskrift om fôrvarer* [Regulation on feedingstuffs] (FOR-2002-11-07-1290). Landbruksdepartementet og Fiskeridepartementet. https://lovdata.no/dokument/SF/forskrift/2002-11-07-1290

Norway. (2004). *Forskrift om drift av akvakulturanlegg* [Regulation on the operation of aquaculture facilities] (akvakulturdriftsforskriften) (FOR-2004-12-22). Fiskeri- og kystdepartementet. https://faolex.fao.org/docs/pdf/nor76392.pdf

Norway. (2020). *Forskrift om bekjempelse av lakselus i akvakulturanlegg* [Regulation on combating salmon lice in aquaculture facilities] (Forskrift om lakselusbekjempelse). Lovdata. https://lovdata.no/dokument/SF/forskrift/2012-12-05-1272

Quality assessment of fish vaccine data in the Norwegian Veterinary Prescription Register (VetReg). (2025). *BMC Veterinary Research*. https://doi.org/10.1186/s12917-024-04460-7

RASTECH Magazine. (2025, July 7). Norway reopens land-based aquaculture licensing, introduces new rules. https://www.rastechmagazine.com/norway-reopens-land-based-aquaculture-licensing-introduces-new-rules/

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

The economic impact of decreased mortality and increased growth associated with preventing, replacing or improving current methods for delousing farmed Atlantic salmon in Norway. (2023). *ScienceDirect*. https://www.sciencedirect.com/science/article/pii/S016758772300226X

The impact of production intensity on water quality in oxygen enriched, floating enclosures for post-smolt salmon culture. (2017). *ScienceDirect*. https://www.sciencedirect.com/science/article/abs/pii/S0144860916302266

TheFishSite. (2019, June 7). Stocking density: Does it matter? https://thefishsite.com/articles/stocking-density-does-it-matter

World Aquaculture Society. (2024, February). Stringent measures: Norwegian regulations on sea lice. *World Aquaculture Magazine*. https://www.was.org/Magazine/2024/02/67/

Ytrestøyl, T., Aas, T. S., & Åsgård, T. (2015). Utilisation of feed resources in production of Atlantic salmon (*Salmo salar*) in Norway. *Aquaculture, 448*, 365–374. https://doi.org/10.1016/j.aquaculture.2015.06.023
