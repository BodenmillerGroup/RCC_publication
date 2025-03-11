#!/bin/bash

# Step 4: Create splits 
# NOTE: Make sure to adjust create_splits_seq.py with your dataset specifications.
python create_splits_seq.py --task task_LM_TME_archetypes --seed 1 --k 10 --label_frac 1 --split_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/splits/

#echo "[INFO] Split creation completed."

# Step 5: Training / Test
# NOTE: Make sure to adjust main.py with your dataset specifications.

CUDA_VISIBLE_DEVICES=0 python main.py \
    --task task_LM_TME_archetypes \
    --data_root_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/ \
    --results_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/results/ \
    --split_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/splits/ \
    --exp_code train_b4_lr1low \
    --seed 1 \
    --k 10 \
    --label_frac 1 \
    --max_epochs 50 \
    --early_stopping \
    --opt adam \
    --drop_out 0.25 \
    --lr 1e-5 \
    --weighted_sample \
    --B 4 \
    --bag_loss ce \
    --inst_loss svm \
    --model_type clam_sb \
    --subtyping \
    --embed_dim 1024 \
    --log_data

echo "[INFO] Training completed."