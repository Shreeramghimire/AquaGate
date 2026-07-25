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

The shift is both vendor-driven (AKVA's own ERP migration) and farmer-driven (open API expectations from ScaleAQ customers) — suggesting the industry is converging on a cloud-native, API-first, multi-vendor data ecosystem.
