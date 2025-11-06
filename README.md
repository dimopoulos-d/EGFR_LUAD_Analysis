# EGFR_LUAD_Analysis

Integrative bioinformatics analysis of **EGFR RNA editing and mutations** in **lung adenocarcinoma (LUAD)** using R.

## Goals
- Quantify EGFR RNA-editing sites (REDIportal/RADAR) in TCGA-LUAD.
- Test associations with **survival** (KM/Cox).
- Compare **EGFR CRISPR dependency** (DepMap) and explore **drug sensitivity** (GDSC).

## Repository structure
```
data/      # raw & processed data (large files stay local; not pushed)
scripts/   # R analysis scripts
reports/   # RMarkdown notebooks & outputs
figures/   # exported plots
```

## Requirements
- R ≥ 4.3, RStudio
- Core packages: tidyverse, survival, survminer, TCGAbiolinks, GenomicRanges, biomaRt, depmap, pharmacoGx

## Status
Work in progress (Nov 2025 – Mar 2026)
