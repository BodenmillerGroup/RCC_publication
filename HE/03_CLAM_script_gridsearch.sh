#!/bin/bash

# Step 4: Create splits 
# NOTE: Make sure to adjust create_splits_seq.py with your dataset specifications.
python create_splits_seq.py --task task_LM_TME_archetypes --seed 1 --k 1 --label_frac 0.5 --split_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/splits/

#echo "[INFO] Split creation completed."

# Step 5: Training / Test
# NOTE: Make sure to adjust main.py with your dataset specifications.

## GRID SEARCH for B [4,8,16,32] and LR [1e-4, 2e-5, 1e-5, 5e-6] and bag_loss [ce, svm]

# Bag loss - CE 

CUDA_VISIBLE_DEVICES=0 python main.py \
    --task task_LM_TME_archetypes \
    --data_root_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/ \
    --results_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/results/ \
    --split_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/splits/ \
    --exp_code tuning_b4_lr5vlow \
    --seed 1 \
    --k 1 \
    --label_frac 0.5 \
    --max_epochs 30 \
    --early_stopping \
    --opt adam \
    --drop_out 0.25 \
    --lr 5e-6 \
    --weighted_sample \
    --B 4 \
    --bag_loss ce \
    --inst_loss svm \
    --model_type clam_sb \
    --subtyping \
    --embed_dim 1024 \
    --log_data

CUDA_VISIBLE_DEVICES=0 python main.py \
    --task task_LM_TME_archetypes \
    --data_root_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/ \
    --results_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/results/ \
    --split_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/splits/ \
    --exp_code tuning_b8_lr5vlow \
    --seed 1 \
    --k 1 \
    --label_frac 0.5 \
    --max_epochs 30 \
    --early_stopping \
    --opt adam \
    --drop_out 0.25 \
    --lr 5e-6 \
    --weighted_sample \
    --B 8 \
    --bag_loss ce \
    --inst_loss svm \
    --model_type clam_sb \
    --subtyping \
    --embed_dim 1024 \
    --log_data

CUDA_VISIBLE_DEVICES=0 python main.py \
    --task task_LM_TME_archetypes \
    --data_root_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/ \
    --results_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/results/ \
    --split_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/splits/ \
    --exp_code tuning_b16_lr5vlow \
    --seed 1 \
    --k 1 \
    --label_frac 0.5 \
    --max_epochs 30 \
    --early_stopping \
    --opt adam \
    --drop_out 0.25 \
    --lr 5e-6 \
    --weighted_sample \
    --B 16 \
    --bag_loss ce \
    --inst_loss svm \
    --model_type clam_sb \
    --subtyping \
    --embed_dim 1024 \
    --log_data

CUDA_VISIBLE_DEVICES=0 python main.py \
    --task task_LM_TME_archetypes \
    --data_root_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/ \
    --results_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/results/ \
    --split_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/splits/ \
    --exp_code tuning_b32_lr5vlow \
    --seed 1 \
    --k 1 \
    --label_frac 0.5 \
    --max_epochs 30 \
    --early_stopping \
    --opt adam \
    --drop_out 0.25 \
    --lr 5e-6 \
    --weighted_sample \
    --B 32 \
    --bag_loss ce \
    --inst_loss svm \
    --model_type clam_sb \
    --subtyping \
    --embed_dim 1024 \
    --log_data

CUDA_VISIBLE_DEVICES=0 python main.py \
    --task task_LM_TME_archetypes \
    --data_root_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/ \
    --results_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/results/ \
    --split_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/splits/ \
    --exp_code tuning_b4_lr5vlow \
    --seed 1 \
    --k 1 \
    --label_frac 0.5 \
    --max_epochs 30 \
    --early_stopping \
    --opt adam \
    --drop_out 0.25 \
    --lr 1e-4 \
    --weighted_sample \
    --B 4 \
    --bag_loss ce \
    --inst_loss svm \
    --model_type clam_sb \
    --subtyping \
    --embed_dim 1024 \
    --log_data

CUDA_VISIBLE_DEVICES=0 python main.py \
    --task task_LM_TME_archetypes \
    --data_root_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/ \
    --results_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/results/ \
    --split_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/splits/ \
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

CUDA_VISIBLE_DEVICES=0 python main.py \
    --task task_LM_TME_archetypes \
    --data_root_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/ \
    --results_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/results/ \
    --split_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/splits/ \
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

CUDA_VISIBLE_DEVICES=0 python main.py \
    --task task_LM_TME_archetypes \
    --data_root_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/ \
    --results_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/results/ \
    --split_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/splits/ \
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

CUDA_VISIBLE_DEVICES=0 python main.py \
    --task task_LM_TME_archetypes \
    --data_root_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/ \
    --results_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/results/ \
    --split_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/splits/ \
    --exp_code tuning_b4_lr2low \
    --seed 1 \
    --k 1 \
    --label_frac 0.5 \
    --max_epochs 30 \
    --early_stopping \
    --opt adam \
    --drop_out 0.25 \
    --lr 2e-5 \
    --weighted_sample \
    --B 4 \
    --bag_loss ce \
    --inst_loss svm \
    --model_type clam_sb \
    --subtyping \
    --embed_dim 1024 \
    --log_data

CUDA_VISIBLE_DEVICES=0 python main.py \
    --task task_LM_TME_archetypes \
    --data_root_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/ \
    --results_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/results/ \
    --split_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/splits/ \
    --exp_code tuning_b8_lr2low \
    --seed 1 \
    --k 1 \
    --label_frac 0.5 \
    --max_epochs 30 \
    --early_stopping \
    --opt adam \
    --drop_out 0.25 \
    --lr 2e-5 \
    --weighted_sample \
    --B 8 \
    --bag_loss ce \
    --inst_loss svm \
    --model_type clam_sb \
    --subtyping \
    --embed_dim 1024 \
    --log_data

CUDA_VISIBLE_DEVICES=0 python main.py \
    --task task_LM_TME_archetypes \
    --data_root_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/ \
    --results_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/results/ \
    --split_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/splits/ \
    --exp_code tuning_b16_lr2low \
    --seed 1 \
    --k 1 \
    --label_frac 0.5 \
    --max_epochs 30 \
    --early_stopping \
    --opt adam \
    --drop_out 0.25 \
    --lr 2e-5 \
    --weighted_sample \
    --B 16 \
    --bag_loss ce \
    --inst_loss svm \
    --model_type clam_sb \
    --subtyping \
    --embed_dim 1024 \
    --log_data

CUDA_VISIBLE_DEVICES=0 python main.py \
    --task task_LM_TME_archetypes \
    --data_root_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/ \
    --results_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/results/ \
    --split_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/splits/ \
    --exp_code tuning_b32_lr2low \
    --seed 1 \
    --k 1 \
    --label_frac 0.5 \
    --max_epochs 30 \
    --early_stopping \
    --opt adam \
    --drop_out 0.25 \
    --lr 2e-5 \
    --weighted_sample \
    --B 32 \
    --bag_loss ce \
    --inst_loss svm \
    --model_type clam_sb \
    --subtyping \
    --embed_dim 1024 \
    --log_data

CUDA_VISIBLE_DEVICES=0 python main.py \
    --task task_LM_TME_archetypes \
    --data_root_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/ \
    --results_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/results/ \
    --split_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/splits/ \
    --exp_code tuning_b4_lr1low \
    --seed 1 \
    --k 1 \
    --label_frac 0.5 \
    --max_epochs 30 \
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

CUDA_VISIBLE_DEVICES=0 python main.py \
    --task task_LM_TME_archetypes \
    --data_root_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/ \
    --results_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/results/ \
    --split_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/splits/ \
    --exp_code tuning_b8_lr1low \
    --seed 1 \
    --k 1 \
    --label_frac 0.5 \
    --max_epochs 30 \
    --early_stopping \
    --opt adam \
    --drop_out 0.25 \
    --lr 1e-5 \
    --weighted_sample \
    --B 8 \
    --bag_loss ce \
    --inst_loss svm \
    --model_type clam_sb \
    --subtyping \
    --embed_dim 1024 \
    --log_data

CUDA_VISIBLE_DEVICES=0 python main.py \
    --task task_LM_TME_archetypes \
    --data_root_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/ \
    --results_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/results/ \
    --split_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/splits/ \
    --exp_code tuning_b16_lr1low \
    --seed 1 \
    --k 1 \
    --label_frac 0.5 \
    --max_epochs 30 \
    --early_stopping \
    --opt adam \
    --drop_out 0.25 \
    --lr 1e-5 \
    --weighted_sample \
    --B 16 \
    --bag_loss ce \
    --inst_loss svm \
    --model_type clam_sb \
    --subtyping \
    --embed_dim 1024 \
    --log_data

CUDA_VISIBLE_DEVICES=0 python main.py \
    --task task_LM_TME_archetypes \
    --data_root_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/ \
    --results_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/results/ \
    --split_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/splits/ \
    --exp_code tuning_b32_lr1low \
    --seed 1 \
    --k 1 \
    --label_frac 0.5 \
    --max_epochs 30 \
    --early_stopping \
    --opt adam \
    --drop_out 0.25 \
    --lr 1e-5 \
    --weighted_sample \
    --B 32 \
    --bag_loss ce \
    --inst_loss svm \
    --model_type clam_sb \
    --subtyping \
    --embed_dim 1024 \
    --log_data


# Bag loss - SVM 

CUDA_VISIBLE_DEVICES=0 python main.py \
    --task task_LM_TME_archetypes \
    --data_root_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/ \
    --results_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/results/ \
    --split_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/splits/ \
    --exp_code tuning_b4_lr5vlow_svm \
    --seed 1 \
    --k 1 \
    --label_frac 0.5 \
    --max_epochs 30 \
    --early_stopping \
    --opt adam \
    --drop_out 0.25 \
    --lr 5e-6 \
    --weighted_sample \
    --B 4 \
    --bag_loss svm \
    --inst_loss svm \
    --model_type clam_sb \
    --subtyping \
    --embed_dim 1024 \
    --log_data

CUDA_VISIBLE_DEVICES=0 python main.py \
    --task task_LM_TME_archetypes \
    --data_root_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/ \
    --results_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/results/ \
    --split_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/splits/ \
    --exp_code tuning_b8_lr5vlow_svm \
    --seed 1 \
    --k 1 \
    --label_frac 0.5 \
    --max_epochs 30 \
    --early_stopping \
    --opt adam \
    --drop_out 0.25 \
    --lr 5e-6 \
    --weighted_sample \
    --B 8 \
    --bag_loss svm \
    --inst_loss svm \
    --model_type clam_sb \
    --subtyping \
    --embed_dim 1024 \
    --log_data

CUDA_VISIBLE_DEVICES=0 python main.py \
    --task task_LM_TME_archetypes \
    --data_root_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/ \
    --results_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/results/ \
    --split_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/splits/ \
    --exp_code tuning_b16_lr5vlow_svm \
    --seed 1 \
    --k 1 \
    --label_frac 0.5 \
    --max_epochs 30 \
    --early_stopping \
    --opt adam \
    --drop_out 0.25 \
    --lr 5e-6 \
    --weighted_sample \
    --B 16 \
    --bag_loss svm \
    --inst_loss svm \
    --model_type clam_sb \
    --subtyping \
    --embed_dim 1024 \
    --log_data

CUDA_VISIBLE_DEVICES=0 python main.py \
    --task task_LM_TME_archetypes \
    --data_root_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/ \
    --results_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/results/ \
    --split_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/splits/ \
    --exp_code tuning_b32_lr5vlow_svm \
    --seed 1 \
    --k 1 \
    --label_frac 0.5 \
    --max_epochs 30 \
    --early_stopping \
    --opt adam \
    --drop_out 0.25 \
    --lr 5e-6 \
    --weighted_sample \
    --B 32 \
    --bag_loss svm \
    --inst_loss svm \
    --model_type clam_sb \
    --subtyping \
    --embed_dim 1024 \
    --log_data

CUDA_VISIBLE_DEVICES=0 python main.py \
    --task task_LM_TME_archetypes \
    --data_root_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/ \
    --results_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/results/ \
    --split_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/splits/ \
    --exp_code tuning_b4_lr1_svm \
    --seed 1 \
    --k 1 \
    --label_frac 0.5 \
    --max_epochs 30 \
    --early_stopping \
    --opt adam \
    --drop_out 0.25 \
    --lr 1e-4 \
    --weighted_sample \
    --B 4 \
    --bag_loss svm \
    --inst_loss svm \
    --model_type clam_sb \
    --subtyping \
    --embed_dim 1024 \
    --log_data

CUDA_VISIBLE_DEVICES=0 python main.py \
    --task task_LM_TME_archetypes \
    --data_root_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/ \
    --results_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/results/ \
    --split_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/splits/ \
    --exp_code tuning_b8_lr1_svm \
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
    --bag_loss svm \
    --inst_loss svm \
    --model_type clam_sb \
    --subtyping \
    --embed_dim 1024 \
    --log_data

CUDA_VISIBLE_DEVICES=0 python main.py \
    --task task_LM_TME_archetypes \
    --data_root_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/ \
    --results_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/results/ \
    --split_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/splits/ \
    --exp_code tuning_b16_lr1_svm \
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
    --bag_loss svm \
    --inst_loss svm \
    --model_type clam_sb \
    --subtyping \
    --embed_dim 1024 \
    --log_data

CUDA_VISIBLE_DEVICES=0 python main.py \
    --task task_LM_TME_archetypes \
    --data_root_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/ \
    --results_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/results/ \
    --split_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/splits/ \
    --exp_code tuning_b32_lr1_svm \
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
    --bag_loss svm \
    --inst_loss svm \
    --model_type clam_sb \
    --subtyping \
    --embed_dim 1024 \
    --log_data

CUDA_VISIBLE_DEVICES=0 python main.py \
    --task task_LM_TME_archetypes \
    --data_root_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/ \
    --results_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/results/ \
    --split_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/splits/ \
    --exp_code tuning_b4_lr2low_svm \
    --seed 1 \
    --k 1 \
    --label_frac 0.5 \
    --max_epochs 30 \
    --early_stopping \
    --opt adam \
    --drop_out 0.25 \
    --lr 2e-5 \
    --weighted_sample \
    --B 4 \
    --bag_loss svm \
    --inst_loss svm \
    --model_type clam_sb \
    --subtyping \
    --embed_dim 1024 \
    --log_data

CUDA_VISIBLE_DEVICES=0 python main.py \
    --task task_LM_TME_archetypes \
    --data_root_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/ \
    --results_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/results/ \
    --split_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/splits/ \
    --exp_code tuning_b8_lr2low_svm \
    --seed 1 \
    --k 1 \
    --label_frac 0.5 \
    --max_epochs 30 \
    --early_stopping \
    --opt adam \
    --drop_out 0.25 \
    --lr 2e-5 \
    --weighted_sample \
    --B 8 \
    --bag_loss svm \
    --inst_loss svm \
    --model_type clam_sb \
    --subtyping \
    --embed_dim 1024 \
    --log_data

CUDA_VISIBLE_DEVICES=0 python main.py \
    --task task_LM_TME_archetypes \
    --data_root_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/ \
    --results_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/results/ \
    --split_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/splits/ \
    --exp_code tuning_b16_lr2low_svm \
    --seed 1 \
    --k 1 \
    --label_frac 0.5 \
    --max_epochs 30 \
    --early_stopping \
    --opt adam \
    --drop_out 0.25 \
    --lr 2e-5 \
    --weighted_sample \
    --B 16 \
    --bag_loss svm \
    --inst_loss svm \
    --model_type clam_sb \
    --subtyping \
    --embed_dim 1024 \
    --log_data

CUDA_VISIBLE_DEVICES=0 python main.py \
    --task task_LM_TME_archetypes \
    --data_root_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/ \
    --results_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/results/ \
    --split_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/splits/ \
    --exp_code tuning_b32_lr2low_svm \
    --seed 1 \
    --k 1 \
    --label_frac 0.5 \
    --max_epochs 30 \
    --early_stopping \
    --opt adam \
    --drop_out 0.25 \
    --lr 2e-5 \
    --weighted_sample \
    --B 32 \
    --bag_loss svm \
    --inst_loss svm \
    --model_type clam_sb \
    --subtyping \
    --embed_dim 1024 \
    --log_data

CUDA_VISIBLE_DEVICES=0 python main.py \
    --task task_LM_TME_archetypes \
    --data_root_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/ \
    --results_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/results/ \
    --split_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/splits/ \
    --exp_code tuning_b4_lr1low_svm \
    --seed 1 \
    --k 1 \
    --label_frac 0.5 \
    --max_epochs 30 \
    --early_stopping \
    --opt adam \
    --drop_out 0.25 \
    --lr 1e-5 \
    --weighted_sample \
    --B 4 \
    --bag_loss svm \
    --inst_loss svm \
    --model_type clam_sb \
    --subtyping \
    --embed_dim 1024 \
    --log_data

CUDA_VISIBLE_DEVICES=0 python main.py \
    --task task_LM_TME_archetypes \
    --data_root_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/ \
    --results_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/results/ \
    --split_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/splits/ \
    --exp_code tuning_b8_lr1low_svm \
    --seed 1 \
    --k 1 \
    --label_frac 0.5 \
    --max_epochs 30 \
    --early_stopping \
    --opt adam \
    --drop_out 0.25 \
    --lr 1e-5 \
    --weighted_sample \
    --B 8 \
    --bag_loss svm \
    --inst_loss svm \
    --model_type clam_sb \
    --subtyping \
    --embed_dim 1024 \
    --log_data

CUDA_VISIBLE_DEVICES=0 python main.py \
    --task task_LM_TME_archetypes \
    --data_root_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/ \
    --results_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/results/ \
    --split_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/splits/ \
    --exp_code tuning_b16_lr1low_svm \
    --seed 1 \
    --k 1 \
    --label_frac 0.5 \
    --max_epochs 30 \
    --early_stopping \
    --opt adam \
    --drop_out 0.25 \
    --lr 1e-5 \
    --weighted_sample \
    --B 16 \
    --bag_loss svm \
    --inst_loss svm \
    --model_type clam_sb \
    --subtyping \
    --embed_dim 1024 \
    --log_data

CUDA_VISIBLE_DEVICES=0 python main.py \
    --task task_LM_TME_archetypes \
    --data_root_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/ \
    --results_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/results/ \
    --split_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/splits/ \
    --exp_code tuning_b32_lr1low_svm \
    --seed 1 \
    --k 1 \
    --label_frac 0.5 \
    --max_epochs 30 \
    --early_stopping \
    --opt adam \
    --drop_out 0.25 \
    --lr 1e-5 \
    --weighted_sample \
    --B 32 \
    --bag_loss svm \
    --inst_loss svm \
    --model_type clam_sb \
    --subtyping \
    --embed_dim 1024 \
    --log_data
