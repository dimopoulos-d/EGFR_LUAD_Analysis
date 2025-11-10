# 01_setup.R — packages & project options
options(stringsAsFactors = FALSE)

pkgs <- c(
  "tidyverse","survival","survminer",
  "TCGAbiolinks","GenomicRanges","biomaRt",
  "depmap","pharmacoGx"
)

to_install <- pkgs[!pkgs %in% installed.packages()[, "Package"]]
if (length(to_install)) install.packages(to_install, dependencies = TRUE)

invisible(lapply(pkgs, library, character.only = TRUE))
message("All packages loaded. You're ready to go.")
