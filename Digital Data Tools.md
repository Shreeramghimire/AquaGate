## Digital Tools & Platforms in Norwegian Aquaculture

A practical inventory of the actual software/platforms in use; who built them, what they do, and how they're deployed. This complements the data-domain documents (which describe *what* data exists) by mapping *what systems generate, move, and manage* that data.

**Deployment column key:** Cloud/web-based = accessed via browser, vendor-hosted · On-prem/local = runs on farm-local hardware · Hybrid = both.

---

## Commercial Vendor Platforms

| Tool / Platform | Primary Domain(s) | Services / Data Activities | Built & Owned By | Deployment | IoT/Sensor Integration | Scale of Use / Status |
|-----------------|-------------------|----------------------------|------------------|------------|------------------------|----------------------|
| **AKVA Fishtalk** (now "AKVA Fishtalk 5") | Production Planning, Fish Health, Feed | Full production/biological and financial planning, egg-to-harvest traceability, batch tracking, reporting; recently rebuilt as cloud-based with open APIs | AKVA group (Norway) | Cloud-based (migrated from on-prem in recent relaunch), browser + mobile app | Yes; connects to AKVA's own sensor, biomass, camera, and lice-counting systems (Connect 4, Submerged, Observe) via open APIs | Reported ~60% market share among Norwegian/international salmon farmers; one of the longest-established systems in the industry |
| **AKVA Connect** | Production Planning, Feed | Broader digital ecosystem/dashboard layer integrating feeding, sensors, cameras across AKVA's hardware and software lines | AKVA group (Norway) | Cloud-based | Yes; designed as the integration layer across AKVA's own hardware | Deployed across AKVA's global customer base; positioned as AKVA's flagship "digital" segment product |
| **Observe** (AKVA Observe) | Feed, Fish Health | AI feeding-behavior analysis using existing pen cameras — detects appetite, pellet waste, feeding efficiency in real time | Originally Observe Technologies (Norway/UK); fully acquired by AKVA group in 2024 | Cloud-based, integrates with existing camera hardware (no new equipment required) | Yes; designed specifically to plug into a farm's existing camera/IoT infrastructure | Marketed as reducing FCR and improving feeding response; integrated directly into Fishtalk 5 |
