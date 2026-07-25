## Data Storage & Cybersecurity in Norwegian Aquaculture's Digital Systems

This file presents two piece of informations: **where does aquaculture data actually live** and **what are the real, current cybersecurity stakes**

---

### Data Storage Characteristics by Category

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

