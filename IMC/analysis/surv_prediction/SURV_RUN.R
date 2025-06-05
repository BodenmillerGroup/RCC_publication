### Prefer reduced clinical features
### Favor CLIN if CLIN is available

## SELECTED - IMC - GEN, T, MY, TU, IMC, IMC (-GEN)
rmarkdown::render("~/GitHub/RCC/IMC/analysis/surv_prediction/SURV_02_SurvPred_BlockForest.Rmd",
                  params = list(
                    blocks_selected = c("IMC_GEN_"),
                    add_all_features = FALSE, # Add all features or selection
                    add_surv_time = FALSE, # Add survival time in training
                    add_PL_level = FALSE, # Add PL-info
                    add_GEN_level = TRUE, #Add GEN-info
                    favor_clinical = 0, #Favor specific block in BlockForest - 1 is CLIN (default; 0 would not favor)
                    run_name = "BF_IMC_GEN.rds"),
                  output_file = paste0("/mnt/central_nas/rcc_volume/RCC/survival_pred/BlockForest/html/", run_name, ".html")
)

rmarkdown::render("~/GitHub/RCC/IMC/analysis/surv_prediction/SURV_02_SurvPred_BlockForest.Rmd",
                  params = list(
                    blocks_selected = c("IMC_T_"),
                    add_all_features = FALSE, # Add all features or selection
                    add_surv_time = FALSE, # Add survival time in training
                    add_PL_level = FALSE, # Add PL-info
                    add_GEN_level = FALSE, #Add GEN-info
                    favor_clinical = 0, #Favor specific block in BlockForest - 1 is CLIN (default; 0 would not favor)
                    run_name = "BF_IMC_T.rds"),
                  output_file = paste0("/mnt/central_nas/rcc_volume/RCC/survival_pred/BlockForest/html/", run_name, ".html")
)

rmarkdown::render("~/GitHub/RCC/IMC/analysis/surv_prediction/SURV_02_SurvPred_BlockForest.Rmd",
                  params = list(
                    blocks_selected = c("IMC_MY_"),
                    add_all_features = FALSE, # Add all features or selection
                    add_surv_time = FALSE, # Add survival time in training
                    add_PL_level = FALSE, # Add PL-info
                    add_GEN_level = FALSE, #Add GEN-info
                    favor_clinical = 0, #Favor specific block in BlockForest - 1 is CLIN (default; 0 would not favor)
                    run_name = "BF_IMC_MY.rds"),
                  output_file = paste0("/mnt/central_nas/rcc_volume/RCC/survival_pred/BlockForest/html/", run_name, ".html")
)

rmarkdown::render("~/GitHub/RCC/IMC/analysis/surv_prediction/SURV_02_SurvPred_BlockForest.Rmd",
                  params = list(
                    blocks_selected = c("IMC_TU_"),
                    add_all_features = FALSE, # Add all features or selection
                    add_surv_time = FALSE, # Add survival time in training
                    add_PL_level = FALSE, # Add PL-info
                    add_GEN_level = FALSE, #Add GEN-info
                    favor_clinical = 0, #Favor specific block in BlockForest - 1 is CLIN (default; 0 would not favor)
                    run_name = "BF_IMC_TU.rds"),
                  output_file = paste0("/mnt/central_nas/rcc_volume/RCC/survival_pred/BlockForest/html/", run_name, ".html")
)

rmarkdown::render("~/GitHub/RCC/IMC/analysis/surv_prediction/SURV_02_SurvPred_BlockForest.Rmd",
                  params = list(
                    blocks_selected = c("IMC_"),
                    add_all_features = FALSE, # Add all features or selection
                    add_surv_time = FALSE, # Add survival time in training
                    add_PL_level = FALSE, # Add PL-info
                    add_GEN_level = TRUE, #Add GEN-info
                    favor_clinical = 0, #Favor specific block in BlockForest - 1 is CLIN (default; 0 would not favor)
                    run_name = "BF_IMC.rds"),
                  output_file = paste0("/mnt/central_nas/rcc_volume/RCC/survival_pred/BlockForest/html/", run_name, ".html")
)

rmarkdown::render("~/GitHub/RCC/IMC/analysis/surv_prediction/SURV_02_SurvPred_BlockForest.Rmd",
                  params = list(
                    blocks_selected = c("IMC_"),
                    add_all_features = FALSE, # Add all features or selection
                    add_surv_time = FALSE, # Add survival time in training
                    add_PL_level = FALSE, # Add PL-info
                    add_GEN_level = FALSE, #Add GEN-info
                    favor_clinical = 0, #Favor specific block in BlockForest - 1 is CLIN (default; 0 would not favor)
                    run_name = "BF_IMC_noGEN.rds"),
                  output_file = paste0("/mnt/central_nas/rcc_volume/RCC/survival_pred/BlockForest/html/", run_name, ".html")
)


## ALL - IMC - GEN, T, MY, TU, IMC, IMC (-GEN)
rmarkdown::render("~/GitHub/RCC/IMC/analysis/surv_prediction/SURV_02_SurvPred_BlockForest.Rmd",
                  params = list(
                    blocks_selected = c("IMC_GEN_"), 
                    add_all_features = TRUE, # Add all features or selection
                    add_surv_time = FALSE, # Add survival time in training
                    add_PL_level = FALSE, # Add PL-info
                    add_GEN_level = TRUE, #Add GEN-info
                    favor_clinical = 0, #Favor specific block in BlockForest - 1 is CLIN (default; 0 would not favor)
                    run_name = "BF_IMC_GEN_all.rds"),
                  output_file = paste0("/mnt/central_nas/rcc_volume/RCC/survival_pred/BlockForest/html/", run_name, ".html")
)

rmarkdown::render("~/GitHub/RCC/IMC/analysis/surv_prediction/SURV_02_SurvPred_BlockForest.Rmd",
                  params = list(
                    blocks_selected = c("IMC_T_"), 
                    add_all_features = TRUE, # Add all features or selection
                    add_surv_time = FALSE, # Add survival time in training
                    add_PL_level = FALSE, # Add PL-info
                    add_GEN_level = FALSE, #Add GEN-info
                    favor_clinical = 0, #Favor specific block in BlockForest - 1 is CLIN (default; 0 would not favor)
                    run_name = "BF_IMC_T_all.rds"),
                  output_file = paste0("/mnt/central_nas/rcc_volume/RCC/survival_pred/BlockForest/html/", run_name, ".html")
)

rmarkdown::render("~/GitHub/RCC/IMC/analysis/surv_prediction/SURV_02_SurvPred_BlockForest.Rmd",
                  params = list(
                    blocks_selected = c("IMC_MY_"), 
                    add_all_features = TRUE, # Add all features or selection
                    add_surv_time = FALSE, # Add survival time in training
                    add_PL_level = FALSE, # Add PL-info
                    add_GEN_level = FALSE, #Add GEN-info
                    favor_clinical = 0, #Favor specific block in BlockForest - 1 is CLIN (default; 0 would not favor)
                    run_name = "BF_IMC_MY_all.rds"),
                  output_file = paste0("/mnt/central_nas/rcc_volume/RCC/survival_pred/BlockForest/html/", run_name, ".html")
)

rmarkdown::render("~/GitHub/RCC/IMC/analysis/surv_prediction/SURV_02_SurvPred_BlockForest.Rmd",
                  params = list(
                    blocks_selected = c("IMC_TU_"), 
                    add_all_features = TRUE, # Add all features or selection
                    add_surv_time = FALSE, # Add survival time in training
                    add_PL_level = FALSE, # Add PL-info
                    add_GEN_level = FALSE, #Add GEN-info
                    favor_clinical = 0, #Favor specific block in BlockForest - 1 is CLIN (default; 0 would not favor)
                    run_name = "BF_IMC_TU_all.rds"),
                  output_file = paste0("/mnt/central_nas/rcc_volume/RCC/survival_pred/BlockForest/html/", run_name, ".html")
)

rmarkdown::render("~/GitHub/RCC/IMC/analysis/surv_prediction/SURV_02_SurvPred_BlockForest.Rmd",
                  params = list(
                    blocks_selected = c("IMC_"), 
                    add_all_features = TRUE, # Add all features or selection
                    add_surv_time = FALSE, # Add survival time in training
                    add_PL_level = FALSE, # Add PL-info
                    add_GEN_level = TRUE, #Add GEN-info
                    favor_clinical = 0, #Favor specific block in BlockForest - 1 is CLIN (default; 0 would not favor)
                    run_name = "BF_IMC_all.rds"),
                  output_file = paste0("/mnt/central_nas/rcc_volume/RCC/survival_pred/BlockForest/html/", run_name, ".html")
)

rmarkdown::render("~/GitHub/RCC/IMC/analysis/surv_prediction/SURV_02_SurvPred_BlockForest.Rmd",
                  params = list(
                    blocks_selected = c("IMC_"), 
                    add_all_features = TRUE, # Add all features or selection
                    add_surv_time = FALSE, # Add survival time in training
                    add_PL_level = FALSE, # Add PL-info
                    add_GEN_level = FALSE, #Add GEN-info
                    favor_clinical = 0, #Favor specific block in BlockForest - 1 is CLIN (default; 0 would not favor)
                    run_name = "BF_IMC_noGEN_all.rds"),
                  output_file = paste0("/mnt/central_nas/rcc_volume/RCC/survival_pred/BlockForest/html/", run_name, ".html")
)


#CLIN, IMC, CLIN+IMC
rmarkdown::render("~/GitHub/RCC/IMC/analysis/surv_prediction/SURV_02_SurvPred_BlockForest.Rmd",
                  params = list(
                    blocks_selected = c("CLIN"),
                    add_all_features = FALSE, # Add all features or selection
                    add_surv_time = FALSE, # Add survival time in training
                    add_PL_level = FALSE, # Add PL-info
                    add_GEN_level = FALSE, #Add GEN-info
                    favor_clinical = 1, #Favor specific block in BlockForest - 1 is CLIN (default; 0 would not favor)
                    run_name = "BF_CLIN.rds"),
                  output_file = paste0("/mnt/central_nas/rcc_volume/RCC/survival_pred/BlockForest/html/", run_name, ".html")
)

rmarkdown::render("~/GitHub/RCC/IMC/analysis/surv_prediction/SURV_02_SurvPred_BlockForest.Rmd",
                  params = list(
                    blocks_selected = c("CLIN","IMC"),
                    add_all_features = FALSE, # Add all features or selection
                    add_surv_time = FALSE, # Add survival time in training
                    add_PL_level = FALSE, # Add PL-info
                    add_GEN_level = FALSE, #Add GEN-info
                    favor_clinical = 1, #Favor specific block in BlockForest - 1 is CLIN (default; 0 would not favor)
                    run_name = "BF_CLIN_IMC.rds"),
                  output_file = paste0("/mnt/central_nas/rcc_volume/RCC/survival_pred/BlockForest/html/", run_name, ".html")
)

rmarkdown::render("~/GitHub/RCC/IMC/analysis/surv_prediction/SURV_02_SurvPred_BlockForest.Rmd",
                  params = list(
                    blocks_selected = c("CLIN","IMC"),
                    add_all_features = FALSE, # Add all features or selection
                    add_surv_time = FALSE, # Add survival time in training
                    add_PL_level = FALSE, # Add PL-info
                    add_GEN_level = FALSE, #Add GEN-info
                    favor_clinical = 2, #Favor specific block in BlockForest - 1 is CLIN (default; 0 would not favor)
                    run_name = "BF_CLIN_IMCfav.rds"),
                  output_file = paste0("/mnt/central_nas/rcc_volume/RCC/survival_pred/BlockForest/html/", run_name, ".html")
)

rmarkdown::render("~/GitHub/RCC/IMC/analysis/surv_prediction/SURV_02_SurvPred_BlockForest.Rmd",
                  params = list(
                    blocks_selected = c("CLIN","IMC"),
                    add_all_features = FALSE, # Add all features or selection
                    add_surv_time = FALSE, # Add survival time in training
                    add_PL_level = FALSE, # Add PL-info
                    add_GEN_level = FALSE, #Add GEN-info
                    favor_clinical = 0, #Favor specific block in BlockForest - 1 is CLIN (default; 0 would not favor)
                    run_name = "BF_CLIN_IMC_nofav.rds"),
                  output_file = paste0("/mnt/central_nas/rcc_volume/RCC/survival_pred/BlockForest/html/", run_name, ".html")
)