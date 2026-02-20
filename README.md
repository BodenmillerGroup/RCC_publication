# A spatial multi-omic portrait of survival outcome for clear cell renal cell carcinoma, Meyer et al., 2026

This repository contains all code scripts for the renal cell carcinoma study from Meyer et al., 2026. 

**DISCLAIMER:** The study is currently undergoing peer-review. Therefore, the code base is under active development. It includes code for all data presented in the manuscript but also exploratory data analysis parts. File paths have to be adjusted by the user. 


## Abstract

Clear cell renal cell carcinoma (ccRCC) is the leading cause of kidney cancer-related death, but how the tumor microenvironment shapes patient survival is not completely understood. Here, we describe the characterization of ccRCC tumor ecosystems from 498 patients using imaging mass cytometry with a focus on tumor, myeloid, and T cell landscapes. Data from more than 3 million single cells is analyzed using machine-learning to identify key ecosystem features that outperform basic clinical data for predicting patient survival. We define three survival ecotypes of ccRCC: Poor ecotypes, correlate with the worst survival, have high levels of ICAM1 and CD44 expression in tumor cells and are enriched in M2-like macrophages and interactions of exhausted CD8+ T cells with macrophages. Favorable ecotypes are characterized by high levels of VHL on tumor cells and of HLADR on myeloid cells and contain Th1-like CD4+ T cells. Medium ecotypes have the highest endothelial cell density and various immune-to-tumor interactions. Multi-omic characterization of these ecotypes using targeted genomic sequencing and metabolic imaging reveals distinct genomic and metabolic features, including BAP1 mutations in Poor and VHL monodriver/wild-type status in Favorable patients. We show that deep learning allows ecotype prediction directly from standard pathology H&E images. We validate the ecotypes and their associated molecular characteristics with orthogonal omics data across five clinical cohorts and more than 2,500 patients. These analyses highlight an overall survival benefit for Medium patients treated with immunotherapy. In summary, our study distills the survival-relevant information encoded in the ccRCC tumor microenvironment into prognostic survival ecotypes, which may inform clinical decision making in the future. 


## Repository structure

This repository is split into following different directories based on the data types analyzed: `/IMC/`, `/HE/`, `/genome/`, `/metabolome/`, `/validation/`. 

The `/IMC/` is further divided into following sub-directories depending on the IMC panel and analysis approach: `/tumor_panel/`, `/myeloid_panel/`, `/T_panel/`, `/surv_prediction/`, `/other/`. 

## Software note

Scripts are written in the programming languages **R** and **Python**. All **R code** was run with `R version 4.3.2 (2023-10-31)` on Ubuntu 20.04.4.

## Data access

Raw data is provided on **zenodo** and will be made publicly available upon publication. 

## Issues

For problems and questions, please open an issue [here](https://github.com/BodenmillerGroup/RCC_publication/issues).

## Code-related contact

[Lasse Meyer](https://github.com/lassedochreden) lasse.meyer 'at' dqbm.uzh.ch

