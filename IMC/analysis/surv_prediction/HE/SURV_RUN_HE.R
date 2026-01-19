### Prefer reduced clinical features
### Favor CLIN if CLIN is available


rmarkdown::render("~/GitHub/RCC/IMC/analysis/surv_prediction/HE/SURV_02_SurvPred_BlockForest_HE.Rmd",
                  params = list(
                    blocks_selected = c("IMC_"),
                    types_remove = NULL, #Select which features to remove
                    add_all_features = FALSE, # Add all features or selection
                    add_surv_time = FALSE, # Add survival time in training
                    add_PL_level = FALSE, # Add PL-info
                    add_GEN_level = FALSE, #Add GEN-info
                    favor_clinical = 0, #Favor specific block in BlockForest - 1 is CLIN (default; 0 would not favor)
                    run_name = "BF_IMC_noGEN_HE.rds"),
                  output_file = paste0("/mnt/central_nas/rcc_volume/RCC/survival_pred/BlockForest/html/", run_name, ".html")
)

rmarkdown::render("~/GitHub/RCC/IMC/analysis/surv_prediction/HE/SURV_02_SurvPred_BlockForest_HE.Rmd",
                  params = list(
                    blocks_selected = c("HE_"),
                    types_remove = NULL, #Select which features to remove
                    add_all_features = FALSE, # Add all features or selection
                    add_surv_time = FALSE, # Add survival time in training
                    add_PL_level = FALSE, # Add PL-info
                    add_GEN_level = FALSE, #Add GEN-info
                    favor_clinical = 0, #Favor specific block in BlockForest - 1 is CLIN (default; 0 would not favor)
                    run_name = "BF_HE_HE.rds"),
                  output_file = paste0("/mnt/central_nas/rcc_volume/RCC/survival_pred/BlockForest/html/", run_name, ".html")
)

rmarkdown::render("~/GitHub/RCC/IMC/analysis/surv_prediction/HE/SURV_02_SurvPred_BlockForest_HE.Rmd",
                  params = list(
                    blocks_selected = c("IMC_","HE_"),
                    types_remove = NULL, #Select which features to remove
                    add_all_features = FALSE, # Add all features or selection
                    add_surv_time = FALSE, # Add survival time in training
                    add_PL_level = FALSE, # Add PL-info
                    add_GEN_level = FALSE, #Add GEN-info
                    favor_clinical = 0, #Favor specific block in BlockForest - 1 is CLIN (default; 0 would not favor)
                    run_name = "BF_IMC_noGEN_HE_HE.rds"),
                  output_file = paste0("/mnt/central_nas/rcc_volume/RCC/survival_pred/BlockForest/html/", run_name, ".html")
)