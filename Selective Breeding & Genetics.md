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

### 2. Phenotypic Trait Recording Data

**What it is:**

Direct measurements of traits on breeding candidates and their relatives — this is the raw material that, combined with pedigree/genomic data, lets you estimate how much of a trait is heritable and predict breeding values.

---

#### Key Metrics

| Category | Metrics |
|----------|---------|
| **Growth traits** | Body weight, length, condition factor at standardized ages |
| **Disease resistance** | Survival/time-to-death in controlled pathogen challenge tests (e.g., ISA, IPN, PD, sea lice resistance) |
| **Fillet quality** | Fat content, color, texture — measured non-destructively where possible (since you can't breed from a fish you've filleted) |
| **Maturation** | Late maturation / delayed sexual maturity (a major commercial breeding target, since early maturation reduces flesh quality and growth) |
| **Robustness** | Deformity rate, cardiac/vertebral health indicators |
| **Parasite resistance** | Sea lice count on individually tagged fish in shared challenge environments |

---

#### How It's Collected

- Standardized growth trials in dedicated breeding program facilities, with individually tagged fish reared communally
- Disease challenge tests in biosecure containment facilities, where sibling groups are exposed to a pathogen under controlled conditions and survival is recorded
- Non-destructive imaging and sensor-based phenotyping for traits like fillet fat content (e.g., via X-ray or ultrasound-based body composition estimation on live fish)

> **Note on sib testing:** Since you generally can't deliberately infect the actual breeding candidates, a portion of full-sibling family members serve as proxies — a method called "sib testing."

---

#### Equipment

| Equipment | Purpose |
|-----------|---------|
| Individual weighing/measuring stations | Often automated, RFID-linked to individual records |
| Biosecure challenge-test tanks/facilities | Isolated from commercial production |
| X-ray and ultrasound systems | Live-fish body composition estimation |
| 3D imaging / computer vision systems | Body shape and external trait scoring |

---

#### How It's Used

- **Sib-testing survival data** is the primary route to breeding for disease resistance, since the actual elite breeding candidates are kept pathogen-free while their siblings' challenge-test results serve as the resistance estimate for the family
- Combined with pedigree, phenotypic records let you calculate **heritability (h²)** for each trait — a number that tells you how much of the trait variation is genetic versus environmental, and therefore how much genetic progress is possible per generation

---

### 3. Genomic/Genetic Data

**What it is:**

DNA-level data used both to confirm pedigree and, increasingly, to predict breeding value directly from genetic markers rather than relying on pedigree-based relationships alone.

---

#### Key Metrics

| Category | Metrics |
|----------|---------|
| **SNP genotypes** | SNP (single nucleotide polymorphism) genotype calls across a panel of tens of thousands of markers |
| **Genomic relationships** | Genomic relationship matrix (GRM) — actual realized genetic similarity between individuals, more precise than pedigree-based expected relationships |
| **Marker associations** | Marker-trait associations (from QTL mapping/GWAS studies) for specific traits, e.g., a well-known major QTL affecting IPN resistance in Atlantic salmon |
| **Breeding values** | Genomic estimated breeding values (GEBVs) — see Section 4 |
| **Linkage disequilibrium** | LD patterns used to inform SNP panel design |

---

#### How It's Collected

- Tissue sampling (fin clip is standard — minimally invasive, doesn't require sacrificing the fish)
- DNA extraction and genotyping via SNP arrays or targeted genotyping panels
- Whole-genome or reduced-representation sequencing for reference population development and QTL discovery

---

#### Equipment

| Equipment | Purpose |
|-----------|---------|
| SNP genotyping arrays/chips | Commercial salmon-specific panels exist (e.g., from Affymetrix/ThermoFisher or Illumina-based platforms) |
| DNA extraction robots/kits | High-throughput processing |
| Next-generation sequencing platforms | Reference population and QTL discovery work (less commonly used routinely on every breeding candidate due to cost) |
| Bioinformatics pipelines | SNP calling, quality control, and genomic relationship matrix construction |

---

#### How It's Used

- **Genomic data increases the accuracy** of breeding value prediction beyond what pedigree alone can achieve, particularly for traits with low heritability or where full-sib families would otherwise be hard to distinguish
- **Marker-assisted selection** can be used directly for traits with a known major QTL (fewer traits qualify for this than for genomic selection generally, but IPN resistance in salmon is a commonly cited example)
- **Parentage verification/assignment** replaces or supplements physical tagging in communal rearing systems

---


