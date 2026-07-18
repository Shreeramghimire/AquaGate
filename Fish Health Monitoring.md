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
