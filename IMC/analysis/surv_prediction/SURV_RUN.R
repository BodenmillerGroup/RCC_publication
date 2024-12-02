### Prefer reduced clinical features
### Favor CLIN if CLIN is available

# Categories separately 

## CLIN only
rmarkdown::render("~/GitHub/RCC/IMC/analysis/surv_prediction/SURV_02_SurvPred_BlockForest_ALL.Rmd",
                  params = list(
                    blocks_selected = c("IMC_T_"), #Select which data types to use
                    add_surv_time = FALSE, #Add survival time in training
                    add_PL_level = FALSE,
                    favor_clinical = 0, #Favor specific block in BlockForest - 1 is CLIN (default; 0 would not favor)
                    run_name = "BF_IMC_Tcell_expanded_ALL.rds"),
                  output_file = paste0("/mnt/central_nas/rcc_volume/RCC/survival_pred/BlockForest/html/", run_name, ".html")
)

# ## CLIN only
# rmarkdown::render("~/GitHub/RCC/IMC/analysis/surv_prediction/SURV_02_SurvPred_BlockForest.Rmd",
#                   params = list(
#                     blocks_selected = c("IMC_T_"), #Select which data types to use
#                     add_surv_time = FALSE, #Add survival time in training
#                     add_PL_level = TRUE,
#                     favor_clinical = 0, #Favor specific block in BlockForest - 1 is CLIN (default; 0 would not favor)
#                     run_name = "BF_IMC_Tcell_expanded_withPL.rds"),
#                   output_file = paste0("/mnt/central_nas/rcc_volume/RCC/survival_pred/BlockForest/html/", run_name, ".html")
# )


# # ## CLIN only
# rmarkdown::render("~/GitHub/RCC/IMC/analysis/surv_prediction/SURV_02_SurvPred_BlockForest.Rmd",
#                   params = list(
#                     blocks_selected = c("CLIN"), #Select which data types to use
#                     add_surv_time = FALSE, #Add survival time in training
#                     add_PL_level = FALSE,
#                     favor_clinical = 0, #Favor specific block in BlockForest - 1 is CLIN (default; 0 would not favor)
#                     run_name = "BF_IMC_Tcell_expanded.rds"),
#                   output_file = paste0("/mnt/central_nas/rcc_volume/RCC/survival_pred/BlockForest/html/", run_name, ".html")
# )
# ## IMC full
# rmarkdown::render("~/GitHub/RCC/IMC/analysis/surv_prediction/SURV_02_SurvPred_BlockForest.Rmd", 
#                   params = list(
#                     blocks_selected = c("IMC"), #Select which data types to use
#                     add_surv_time = FALSE, #Add survival time in training
#                     favor_clinical = 0, #Favor specific block in BlockForest - 1 is CLIN (default; 0 would not favor)
#                     run_name = "BF_IMC.rds"),
#                   output_file = paste0("/mnt/central_nas/rcc_volume/RCC/survival_pred/BlockForest/html/", run_name, ".html")
# )
# 
# ## IMC tumor
# rmarkdown::render("~/GitHub/RCC/IMC/analysis/surv_prediction/SURV_02_SurvPred_BlockForest.Rmd",
#                   params = list(
#                     blocks_selected = c("IMC_TU"), #Select which data types to use
#                     add_surv_time = FALSE, #Add survival time in training
#                     favor_clinical = 0, #Favor specific block in BlockForest - 1 is CLIN (default; 0 would not favor)
#                     run_name = "BF_IMC_TU.rds"),
#                   output_file = paste0("/mnt/central_nas/rcc_volume/RCC/survival_pred/BlockForest/html/", run_name, ".html")
# )
# 
# ## IMC myeloid
# rmarkdown::render("~/GitHub/RCC/IMC/analysis/surv_prediction/SURV_02_SurvPred_BlockForest.Rmd",
#                   params = list(
#                     blocks_selected = c("IMC_MY"), #Select which data types to use
#                     add_surv_time = FALSE, #Add survival time in training
#                     favor_clinical = 0, #Favor specific block in BlockForest - 1 is CLIN (default; 0 would not favor)
#                     run_name = "BF_IMC_MY.rds"),
#                   output_file = paste0("/mnt/central_nas/rcc_volume/RCC/survival_pred/BlockForest/html/", run_name, ".html")
# )
# 
# ## IMC T cell
# rmarkdown::render("~/GitHub/RCC/IMC/analysis/surv_prediction/SURV_02_SurvPred_BlockForest.Rmd",
#                   params = list(
#                     blocks_selected = c("IMC_T_"), #Select which data types to use
#                     add_surv_time = FALSE, #Add survival time in training
#                     favor_clinical = 0, #Favor specific block in BlockForest - 1 is CLIN (default; 0 would not favor)
#                     run_name = "BF_IMC_Tcell.rds"),
#                   output_file = paste0("/mnt/central_nas/rcc_volume/RCC/survival_pred/BlockForest/html/", run_name, ".html")
# )
# 
# # COMBINED
# rmarkdown::render("~/GitHub/RCC/IMC/analysis/surv_prediction/SURV_02_SurvPred_BlockForest.Rmd",
#                   params = list(
#                     blocks_selected = c("CLIN", "IMC"), #Select which data types to use
#                     add_surv_time = FALSE, #Add survival time in training
#                     favor_clinical = 1, #Favor specific block in BlockForest - 1 is CLIN (default; 0 would not favor)
#                     run_name = "BF_CLIN_fav_IMC.rds"),
#                   output_file = paste0("/mnt/central_nas/rcc_volume/RCC/survival_pred/BlockForest/html/", run_name, ".html")
# )
# 
# # COMBINED 
# rmarkdown::render("~/GitHub/RCC/IMC/analysis/surv_prediction/SURV_02_SurvPred_BlockForest.Rmd",
#                   params = list(
#                     blocks_selected = c("CLIN", "IMC"), #Select which data types to use
#                     add_surv_time = FALSE, #Add survival time in training
#                     favor_clinical = 2, #Favor specific block in BlockForest - 1 is CLIN (default; 0 would not favor)
#                     run_name = "BF_CLIN_IMC_fav.rds"),
#                   output_file = paste0("/mnt/central_nas/rcc_volume/RCC/survival_pred/BlockForest/html/", run_name, ".html")
# )