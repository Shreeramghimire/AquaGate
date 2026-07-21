# Selective Breeding & Genetics Data in Aquaculture

---

## Overview

Selective breeding and genetics data sit upstream of everything else in this repository. It determines the genetic potential a batch starts with, before a single tank or net pen decision gets made.

Where production planning schedules when fish are produced, and fish health monitoring tracks how they fare, breeding data is about **which fish become parents of the next generation**, based on which traits (growth rate, disease resistance, fillet quality, late maturation) are selected for.

This document follows the structure: what it is → metrics → how it's collected → equipment/tools → how it's used, across five sub-domains.

---

### The Five Sub-Domains

| Sub-Domain | Scope |
|------------|-------|
| **Broodstock & pedigree data** | Who the parents are, and how family lines are tracked |
| **Phenotypic trait recording data** | Measured traits on breeding candidates |
| **Genomic/genetic data** | DNA-level information used to predict breeding value |
| **Breeding value estimation & selection data** | The statistical output that actually drives selection decisions |
| **Reproduction & family production data** | Crossing plans and the resulting family cohorts |

---
### 1. Broodstock & Pedigree Data

**What it is:**

Identity and lineage data for breeding fish — the foundation everything else in this domain builds on, since you can't estimate a breeding value without knowing who's related to whom.

---

#### Key Metrics

| Category | Metrics |
|----------|---------|
| **Individual identification** | Individual fish ID (linked to a physical tag) |
| **Pedigree** | Sire and dam ID per individual (pedigree links) |
| **Generation** | Generation number / year-class |
| **Family** | Family ID (full-sib and half-sib family groupings) |
| **Inbreeding** | Inbreeding coefficient (F) per individual and per mating pair |
| **Population size** | Effective population size (Nₑ) of the breeding nucleus |

---

#### How It's Collected

- Individual tagging at an early life stage, linked to a central pedigree database
- Parentage assignment via genetic markers when physical tagging isn't feasible for very young fish (common in commercial breeding programs, where thousands of families are mixed communally before individual tagging is practical)

---

#### Equipment

| Equipment | Purpose |
|-----------|---------|
| PIT (passive integrated transponder) tags | Individual identification |
| RFID readers | Tag scanning and tracking |
| Visible implant elastomer (VIE) tags | Tagging smaller/younger fish |
| Pedigree management software | Custom breeding program databases, or general livestock genetics platforms adapted for aquaculture |

---

#### How It's Used

- **Pedigree** is the backbone input for BLUP (Best Linear Unbiased Prediction) breeding value estimation — without accurate pedigree, none of the trait data downstream can be turned into a reliable selection decision
- **Managing inbreeding** is an explicit constraint on every generation's mating plan, since aquaculture breeding nuclei are often smaller than wild populations and inbreeding depression is a real risk to long-term genetic gain

---

