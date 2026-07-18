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
