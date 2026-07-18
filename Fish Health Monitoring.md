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
