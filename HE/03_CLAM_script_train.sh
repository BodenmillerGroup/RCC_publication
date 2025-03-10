#!/bin/bash

# Step 4: Create splits 
# NOTE: Make sure to adjust create_splits_seq.py with your dataset specifications.
python create_splits_seq.py --task task_LM_TME_archetypes --seed 1 --k 10 --splits_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/splits/

#echo "[INFO] Split creation completed."

# Step 5: Training / Test
# NOTE: Make sure to adjust create_splits_seq.py with your dataset specifications.

## GRID SEARCH for B [8,16,32] and LR [2e-4, 1e-4]

CUDA_VISIBLE_DEVICES=0 python main.py \
    --task task_LM_TME_archetypes \
    --data_root_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/ \
   --results_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM_REPO/TME_archetypes/results/ \
    --split_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM_REPO/TME_archetypes/splits/ \
    --exp_code tuning_b8_lr2 \
    --seed 1 \
    --k 1 \
    --label_frac 0.5 \
    --max_epochs 30 \
    --early_stopping \
    --opt adam \
    --drop_out 0.25 \
    --lr 2e-4 \
    --weighted_sample \
    --B 8 \
    --bag_loss ce \
    --inst_loss svm \
    --model_type clam_sb \
    --subtyping \
    --embed_dim 1024 \
    --log_data

echo "[INFO] Training/Test 1 completed."

CUDA_VISIBLE_DEVICES=0 python main.py \
    --task task_LM_TME_archetypes \
    --data_root_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/ \
   --results_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM_REPO/TME_archetypes/results/ \
    --split_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM_REPO/TME_archetypes/splits/ \
    --exp_code tuning_b16_lr2 \
    --seed 1 \
    --k 1 \
    --label_frac 0.5 \
    --max_epochs 30 \
    --early_stopping \
    --opt adam \
    --drop_out 0.25 \
    --lr 2e-4 \
    --weighted_sample \
    --B 16 \
    --bag_loss ce \
    --inst_loss svm \
    --model_type clam_sb \
    --subtyping \
    --embed_dim 1024 \
    --log_data

echo "[INFO] Training/Test 2 completed."

CUDA_VISIBLE_DEVICES=0 python main.py \
    --task task_LM_TME_archetypes \
    --data_root_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/ \
   --results_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM_REPO/TME_archetypes/results/ \
    --split_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM_REPO/TME_archetypes/splits/ \
    --exp_code tuning_b32_lr2 \
    --seed 1 \
    --k 1 \
    --label_frac 0.5 \
    --max_epochs 30 \
    --early_stopping \
    --opt adam \
    --drop_out 0.25 \
    --lr 2e-4 \
    --weighted_sample \
    --B 32 \
    --bag_loss ce \
    --inst_loss svm \
    --model_type clam_sb \
    --subtyping \
    --embed_dim 1024 \
    --log_data

echo "[INFO] Training/Test 3 completed."

CUDA_VISIBLE_DEVICES=0 python main.py \
    --task task_LM_TME_archetypes \
    --data_root_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/ \
   --results_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM_REPO/TME_archetypes/results/ \
    --split_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM_REPO/TME_archetypes/splits/ \
    --exp_code tuning_b8_lr1 \
    --seed 1 \
    --k 1 \
    --label_frac 0.5 \
    --max_epochs 30 \
    --early_stopping \
    --opt adam \
    --drop_out 0.25 \
    --lr 1e-4 \
    --weighted_sample \
    --B 8 \
    --bag_loss ce \
    --inst_loss svm \
    --model_type clam_sb \
    --subtyping \
    --embed_dim 1024 \
    --log_data

echo "[INFO] Training/Test 4 completed."

CUDA_VISIBLE_DEVICES=0 python main.py \
    --task task_LM_TME_archetypes \
    --data_root_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/ \
   --results_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM_REPO/TME_archetypes/results/ \
    --split_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM_REPO/TME_archetypes/splits/ \
    --exp_code tuning_b16_lr1 \
    --seed 1 \
    --k 1 \
    --label_frac 0.5 \
    --max_epochs 30 \
    --early_stopping \
    --opt adam \
    --drop_out 0.25 \
    --lr 1e-4 \
    --weighted_sample \
    --B 16 \
    --bag_loss ce \
    --inst_loss svm \
    --model_type clam_sb \
    --subtyping \
    --embed_dim 1024 \
    --log_data

echo "[INFO] Training/Test 5 completed."

CUDA_VISIBLE_DEVICES=0 python main.py \
    --task task_LM_TME_archetypes \
    --data_root_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/ \
   --results_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM_REPO/TME_archetypes/results/ \
    --split_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM_REPO/TME_archetypes/splits/ \
    --exp_code tuning_b32_lr1 \
    --seed 1 \
    --k 1 \
    --label_frac 0.5 \
    --max_epochs 30 \
    --early_stopping \
    --opt adam \
    --drop_out 0.25 \
    --lr 1e-4 \
    --weighted_sample \
    --B 32 \
    --bag_loss ce \
    --inst_loss svm \
    --model_type clam_sb \
    --subtyping \
    --embed_dim 1024 \
    --log_data

echo "[INFO] Training/Test 6 completed."
