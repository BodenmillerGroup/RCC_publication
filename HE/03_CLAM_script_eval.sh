#!/bin/bash

# Step 6: Evaluation
# NOTE: Make sure to adjust eval.py with your dataset specifications.

# TCGA
CUDA_VISIBLE_DEVICES=0 python eval.py \
    --task task_3_TCGA_archetypes \
    --data_root_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TCGA_KIRC/ \
    --results_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/results/ \
    --models_exp_code train_b16_lr2low_s1 \
    --save_exp_code train_b16_lr2low_s1_TCGA_EVAL \
    --split all \
    --k 10 \
    --drop_out 0.25 \
    --embed_dim 1024

echo "[INFO] Evaluation completed."

# CPTAC
CUDA_VISIBLE_DEVICES=0 python eval.py \
    --task task_4_CPTAC_archetypes \
    --data_root_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/CPTAC/ \
    --results_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/results/ \
    --models_exp_code train_b16_lr2low_s1 \
    --save_exp_code train_b16_lr2low_s1_CPTAC_EVAL \
    --split all \
    --k 10 \
    --drop_out 0.25 \
    --embed_dim 1024

echo "[INFO] Evaluation completed."