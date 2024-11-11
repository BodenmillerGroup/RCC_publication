rmarkdown::render("~/GitHub/RCC/IMC/analysis/surv_prediction/SURV_02_SurvPred_BlockForest.Rmd", 
                  params = list(
                    blocks_selected = c("CLIN"), #Select which data types to use
                    add_surv_time = FALSE, #Add survival time in training
                    favor_clinical = 0, #Favor specific block in BlockForest - 1 is CLIN (default; 0 would not favor)
                    run_name = "BF_markdown_test.rds"),
                  output_file = paste0("/mnt/central_nas/rcc_volume/RCC/survival_pred/BlockForest/html/", run_name, ".html")
)
