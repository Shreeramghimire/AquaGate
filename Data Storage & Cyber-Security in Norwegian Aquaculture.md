# Data Storage & Cybersecurity in Norwegian Aquaculture's Digital Systems

This file presents two piece of informations: **where does aquaculture data actually live** and **what are the real, current cybersecurity stakes**

---

## Data Storage Characteristics by Category

Different types of aquaculture data have fundamentally different storage requirements — understanding these distinctions is critical for designing a performant, cost-effective data architecture.

---

| Data Category | Examples | Storage Characteristic |
|---------------|----------|------------------------|
| **High-frequency sensor / time-series data** | Water quality readings, camera feeds, feeding sensor logs | Huge volume, append-only, rarely edited after the fact — needs time-series-optimized storage, not a plain relational table |
| **Transactional / event data** | Stocking events, treatments, harvest records, disease diagnoses | Lower volume, but relationship-heavy (needs joins across batch/site/family) — this is what relational databases are built for |
| **Media / unstructured data** | Underwater camera footage, X-ray/ultrasound images (breeding), 3D fillet-grading scans | Very large file sizes, usually stored separately from the structured data that references it (object storage + a pointer/URL in the database) |

---

### Architectural Implications

| Data Category | Recommended Storage | Key Considerations |
|---------------|---------------------|-------------------|
| **Time-series sensor data** | Time-series database (e.g., TimescaleDB, InfluxDB) or partitioned tables | Data retention policies, downsampling/aggregation for older data, high write throughput |
| **Transactional / event data** | Relational database (PostgreSQL, etc.) with proper indexing | Normalized schema, referential integrity, join performance across batch/site/family |
| **Media / unstructured data** | Object storage (S3, Azure Blob) + database pointer/URL | Storage costs, retrieval latency, metadata indexing for searchability |

---

### Why This Matters

Trying to store all three categories in a single system often leads to poor performance across the board:

- A relational database handling high-frequency sensor writes will struggle with write throughput
- A time-series database doesn't support the complex joins needed for transactional data
- Storing video files directly in a relational database is both slow and expensive

The right architecture stores **each type where it belongs**, with the relational schema providing the **join layer** that ties it all together through references (batch_id, site_id, unit_id, etc.).

## The Dominant Storage Model: Cloud SaaS, Not On-Premises

This is the clearest finding from the market landscape: software-as-a-service is now the default, not an exception.

Industry market data puts SaaS software at roughly **48% of the entire aquaculture data platform market by value**, and the shift among Norwegian vendors specifically has been recent and deliberate.

---

#### AKVA Group

AKVA Group moved its own internal ERP from on-premises systems to a cloud-based platform (a 10-year SaaS agreement, ~NOK 100 million) specifically framed as "business-critical" to its digitalization strategy.

Its farmer-facing product, **Fishtalk**, has itself been rebuilt as a cloud/browser-based system with open APIs (Fishtalk 5); a change from its historically more locally-installed footprint.

---

#### Cognite (Reference Architecture)

Cognite (a Norwegian industrial-data company used across sectors including aquaculture) runs its **"Data Fusion"** platform on AWS infrastructure:

- **S3** for object storage
- **Managed databases (RDS, DynamoDB)** for structured data
- **Purpose-built pipelines (Glue, Lambda)** to move sensor data into a unified "industrial knowledge graph"

This is a useful reference architecture for what "modern aquaculture data storage" actually looks like under the hood: a **data lake (object storage)** feeding into contextualized, queryable structures, rather than one monolithic database.

---

#### ScaleAQ

ScaleAQ's software suite is explicitly built around **open APIs** — specifically so farmer data can move between:

- Their own hardware
- Their own software modules
- Third-party systems

This reflects an industry-wide move away from single-vendor data lock-in.

---

### Key Takeaway

| Trend | Implication |
|-------|-------------|
| Cloud/SaaS is now the default | On-premises is the exception, not the norm |
| Open APIs are becoming standard | Data portability and interoperability are now explicit design goals |
| Multi-vendor integration is expected | Farmers can (and do) mix and match hardware, software, and analytics vendors |
| Reference architectures exist | Cognite's data lake → knowledge graph pattern is a proven model for aquaculture data |

The shift is both vendor-driven (AKVA's own ERP migration) and farmer-driven (open API expectations from ScaleAQ customers), suggesting the industry is converging on a cloud-native, API-first, multi-vendor data ecosystem.

---

## What This Means Practically for Someone Working in the Industry

---

#### 1. Your Farm's Data Is No Longer On-Premises

Your farm's data almost certainly isn't sitting on a server in your own building anymore — it's on a vendor's cloud infrastructure (increasingly AWS-based, based on the vendors examined here), accessed via a browser or app.

**Implications:**

| Responsibility | Who Handles It |
|----------------|----------------|
| Backups | Vendor (under service agreement) |
| Uptime / availability | Vendor (under SLA) |
| Breach response | Vendor (under service agreement) |

This is a shift from **self-managed risk** to **vendor-managed risk** — but it's still **your data**, and you remain legally responsible for it under GDPR and Norwegian data protection law.

---

#### 2. Open APIs Are Becoming Standard

Open APIs are becoming standard, which is good for interoperability but means your data is designed to flow between more systems than before.

**Practical action:**

> Worth knowing exactly which third parties have API access to your farm's data, and reviewing that list periodically.

| Action | Frequency |
|--------|-----------|
| Review third-party API access list | At least quarterly |
| Audit which systems have API keys | Before signing any new vendor contract |
| Check what data each integration can access | Whenever a new system is added |

---

#### 3. Regulatory Reporting Is Moving to Machine-to-Machine

Norway's regulatory reporting is moving the same direction — the Mattilsynet API replacing Altinn manual forms means your farm software may soon report directly to government systems without a human checkpoint in between.

**The Trade-off:**

| Aspect | Benefit | Risk |
|--------|---------|------|
| **Efficiency** | Data flows automatically; no manual re-entry | A bad data entry propagates automatically rather than getting caught at manual submission |
| **Error checking** | Fewer transcription errors | The error-checking dynamic changes — you need to catch errors at the source system level, not the reporting step |

---

### Summary

| Shift | What It Means |
|-------|---------------|
| **Data is cloud-hosted** | Vendors manage infrastructure, but you remain legally responsible for your data |
| **Open APIs are standard** | Your data flows between more systems; audit third-party access regularly |
| **Regulatory reporting is automated** | Efficient, but error-checking has shifted upstream to source systems |

### System-Level Cybersecurity & Data Protection

---

#### The Single Most Important Fact for This Section

This isn't hypothetical for Norwegian aquaculture — it has already happened to the sector's leading technology vendor.

**AKVA Group ASA** — the company behind Fishtalk, the farm management system with an estimated ~60% market share among Norwegian salmon farmers — was hit by a cyberattack on **10 January 2021** that took down several key systems and cost the company **NOK 49.7 million (roughly USD 6 million)** in Q1 2021 losses alone.

AKVA worked with Norwegian authorities to contain it and declined to confirm publicly whether a ransom was paid.

**Why this matters:**

> This is worth treating as the sector's own case study, not an abstract "cybersecurity is important" warning — if the dominant vendor's own systems went down, every farm depending on that vendor's software for daily production planning was exposed to the same disruption.

---

#### The Regulatory Landscape Just Changed

Norway's **Digital Security Act (Digitalsikkerhetsloven)** — the national implementation of the EU's NIS/NIS2 cybersecurity framework — entered into force on **1 October 2025**, with no grace period.

This is directly relevant to aquaculture specifically:

| Aspect | Detail |
|--------|--------|
| **Sector classification** | Under the EU/EEA NIS2 classification, **food** — explicitly including the aquaculture/salmon sector — is named as an **"important"** (not just "essential") covered sector |
| **Implication** | Aquaculture companies above a certain scale are now, or will soon be, legally in scope for baseline cybersecurity risk management and incident reporting obligations, not just voluntary best practice |
| **Coordinating body** | **Nasjonal sikkerhetsmyndighet (NSM)** — Norway's National Security Authority — acts as the national coordinating body and CSIRT |
| **Incident reporting** | Companies in scope must follow a structured timeline: 24-hour initial notification → 72-hour fuller report → 30-day final report |
| **Core obligations** | Perform risk assessments of network/information systems and be able to demonstrate (not just claim) that security risk is being actively managed |

---


#### What This Means Practically for Someone Working in the Industry

**1. You may already be a regulated entity**

If your company operates aquaculture production at meaningful scale, you may already be a legally "regulated entity" under this Act, whether or not anyone has explicitly told you that yet.

> *"If Norway counts your firm as critical, you have had legal digital-security duties since October 2025, and most boards have not noticed."*

