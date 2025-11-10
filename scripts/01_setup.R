# 01_setup.R — package setup (CRAN + Bioconductor)
options(stringsAsFactors = FALSE)

cran_pkgs <- c(
  "tidyverse", "survival", "survminer"
)

bioc_pkgs <- c(
  "TCGAbiolinks",
  "SummarizedExperiment",
  "GenomicRanges",
  "biomaRt",
  "depmap",
  "PharmacoGx"   # NOTE: capital P and Gx
)

# Install CRAN pkgs
to_install_cran <- cran_pkgs[!cran_pkgs %in% installed.packages()[, "Package"]]
if (length(to_install_cran)) install.packages(to_install_cran, dependencies = TRUE)

# Ensure BiocManager exists
if (!"BiocManager" %in% installed.packages()[, "Package"]) {
  install.packages("BiocManager")
}

# Install Bioconductor pkgs
to_install_bioc <- bioc_pkgs[!bioc_pkgs %in% installed.packages()[, "Package"]]
if (length(to_install_bioc)) BiocManager::install(to_install_bioc, update = TRUE, ask = FALSE)

# Load everything
pkgs <- c(cran_pkgs, bioc_pkgs)
invisible(lapply(pkgs, library, character.only = TRUE))

message("All packages loaded. You're ready to go.")
