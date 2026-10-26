# A spatial multi-omic portrait of survival outcome for clear cell renal cell carcinoma, Meyer et al., 2026

[![Preprint](https://img.shields.io/badge/Preprint-medRxiv-blue.svg)](https://doi.org/10.64898/2026.03.02.26347390)
![R](https://img.shields.io/badge/R-4.3.2-blue.svg)
![Python](https://img.shields.io/badge/Python-3.10.0-blue.svg)
[![Issues](https://img.shields.io/github/issues/BodenmillerGroup/RCC_publication)](https://github.com/BodenmillerGroup/RCC_publication/issues)
![Zenodo](https://img.shields.io/badge/Zenodo-DOI%20pending-blue.svg)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
<!-- TODO: once a DOI is assigned, replace the badge above with a linked one, e.g.
[![Zenodo](https://zenodo.org/badge/DOI/10.5281/zenodo.XXXXXXX.svg)](https://doi.org/10.5281/zenodo.XXXXXXX) -->

This repository contains analysis code for the clear cell renal cell carcinoma 
study from Meyer et al., 2026. Read the **preprint** here: <https://doi.org/10.64898/2026.03.02.26347390>

**DISCLAIMER:**
The study is currently undergoing peer-review.
Therefore, the code base is under active development.
It includes code for presented figures in the manuscript.
File paths have to be adjusted by the user.

<p align="center">
  <img src="images/GraphicalAbstract.png" width="800">
</p>


## Abstract

Clear cell renal cell carcinoma (ccRCC) is the leading cause of kidney cancer-related death, but how the tumor microenvironment shapes patient survival is not completely understood.
Here, we describe the characterization of ccRCC tumor ecosystems from 498 patients using imaging mass cytometry with a focus on tumor, myeloid, and T cell landscapes.
Data from more than 3 million single cells is analyzed using machine-learning to identify key ecosystem features that outperform basic clinical data for predicting patient survival.
We define three survival ecotypes of ccRCC: Poor ecotypes, correlate with the worst survival, have high levels of ICAM1 and CD44 expression in tumor cells and are enriched in M2-like macrophages and interactions of exhausted CD8+ T cells with macrophages.
Favorable ecotypes are characterized by high levels of VHL on tumor cells and of HLADR on myeloid cells and contain Th1-like CD4+ T cells.
Medium ecotypes have the highest endothelial cell density.
Multi-omic characterization of these ecotypes using targeted genomic sequencing and metabolic imaging reveals distinct genomic and metabolic features, including BAP1 mutations in Poor, VHL monodriver/wild-type status in Favorable and a positively prognostic immune-depleted PBRM1 mutated subset in Medium patients.
We show that deep learning allows ecotype prediction directly from standard pathology H&E images.
We validate the ecotypes and their associated molecular characteristics with orthogonal omics data across five clinical cohorts and more than 2,500 patients.
These analyses highlight distinct treatment responses and survival benefits across ecotypes.
In summary, our study distills the survival-relevant information encoded in the ccRCC tumor microenvironment into prognostic survival ecotypes, which may inform clinical decision making in the future.

## Repository structure

This repository contains data analysis scripts for **re-creating all manuscript figures** based on provided data analysis objects from **zenodo** (<https://zenodo.org/records/TODO>).

## Software note

Scripts are written in the programming languages **R** and **Python**.
**R code** was run with `R version 4.3.2` on Ubuntu 20.04.4.
**Python code** was run with `Python 3.10.0`.

## Data access

Data is provided on **Zenodo** and the **European Nucleotide Archive** and will be 
publicly released upon publication:

| Data type | Repository | Link |
|---|---|---|
| Analysis objects (incl. processed *SingleCellExperiment* objects) | Zenodo | <https://zenodo.org/records/TODO> |
| Raw IMC tumor panel | Zenodo | <https://zenodo.org/records/TODO> |
| Raw IMC myeloid panel | Zenodo | <https://zenodo.org/records/TODO> |
| Raw IMC T cell panel | Zenodo | <https://zenodo.org/records/TODO> |
| Raw H&E data | Zenodo | <https://zenodo.org/records/TODO> |
| Raw genomics data | Zenodo | <https://zenodo.org/records/TODO> |
| Raw targeted sequencing data | European Nucleotide Archive | <https://www.ebi.ac.uk/ena/browser/view/TODO> |

**NOTE:** We plan to add the processed IMC datasets to the **imcdatasets** R/Bioconductor package (<https://github.com/BodenmillerGroup/imcdatasets>) upon publication.

## Issues

For problems and questions, please open an issue [here](https://github.com/BodenmillerGroup/RCC_publication/issues).

## ✉️ Code-related contact

[Lasse Meyer](https://github.com/lassedochreden) lasse.meyer 'at' dqbm.uzh.ch
