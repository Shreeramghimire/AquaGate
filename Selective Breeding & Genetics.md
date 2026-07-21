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
### 4. Breeding Value Estimation & Selection Data

**What it is:**

The statistical output that actually drives which fish get selected as parents — this is where pedigree, phenotype, and genomic data converge into a single actionable number per individual per trait.

---

#### Key Metrics

| Category | Metrics |
|----------|---------|
| **Breeding values** | Estimated breeding value (EBV) or genomic estimated breeding value (GEBV) per individual, per trait |
| **Selection index** | Selection index value — a single combined score weighting multiple traits (growth, disease resistance, fillet quality, maturation timing) according to the breeding program's economic or strategic priorities |
| **Accuracy** | Accuracy of breeding value estimates (a statistical confidence measure, higher with more genomic/phenotypic data) |
| **Genetic trend** | Genetic trend — the change in average breeding value across generations, the actual measure of genetic progress achieved |
| **Inbreeding rate** | Rate of inbreeding per generation |

---

#### How It's Collected

- Computed via specialized quantitative genetics software (not measured directly — this is a derived/modeled output)
- BLUP or genomic BLUP (GBLUP) mixed-model analysis combining pedigree/genomic relationship matrices with phenotypic records

---

#### Equipment / Tools

| Tool | Purpose |
|------|---------|
| **Statistical genetics software** | ASReml, BLUPF90 family of programs, or custom R/Python pipelines built around packages for mixed-model animal breeding analysis |
| **Selection index software/spreadsheets** | Translating multi-trait EBVs into a single ranking |

---

#### How It's Used

- **Decision layer:** Breeding candidates are ranked by selection index, and the top-ranked individuals (subject to inbreeding constraints) become the parents of the next generation
- **Validation:** Genetic trend data is used to report and validate the breeding program's progress to stakeholders — e.g., demonstrating that disease resistance or growth rate has genuinely improved generation over generation, not just as a marketing claim but as a tracked, auditable number

---

### 5. Reproduction & Family Production Data

**What it is:**

The operational data around actually executing the mating plan — turning a list of selected parents into the next generation's family cohorts.

---

#### Key Metrics

| Category | Metrics |
|----------|---------|
| **Mating plan** | Mating plan / crossing list (which sire × dam pairs, chosen to balance genetic gain against inbreeding) |
| **Family production** | Number of families produced per year-class |
| **Fertilization** | Fertilization rate and egg survival rate per family |
| **Family size** | Number of offspring per family reaching key life stages |
| **Cryopreservation** | Gamete/tissue cryopreservation records (for genetic banking and biosecurity backup) |

---

#### How It's Collected

- Hatchery reproduction records (stripping dates, fertilization outcomes)
- Family-level survival tracking through incubation and early rearing, before individual tagging is applied
- Cryobank inventory records (milt/sperm cryopreservation is well-established in salmon breeding; egg cryopreservation is much less mature)

---

#### Equipment

| Equipment | Purpose |
|-----------|---------|
| Standard hatchery stripping and fertilization equipment | Reproduction operations |
| Cryopreservation systems | Liquid nitrogen storage, controlled-rate freezers for milt banking |
| Family-level rearing containers | Keeping families separate before tagging, to preserve pedigree information |

---

#### How It's Used

- Feeds directly into **Section 1 (Broodstock & Pedigree Data)** for the next generation, closing the breeding cycle
- **Cryobanking** provides a genetic insurance policy against a catastrophic loss of the live breeding nucleus (disease outbreak, facility failure) and preserves genetic diversity that might otherwise be lost as selection intensifies
