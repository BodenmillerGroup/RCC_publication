#!/bin/bash

# Prerequisites: Conda environment active and correct working directory
# Step 1: Set environment variable for checkpoint path
# patch size 256 (own) or 512 (TCGA)
python create_patches_fp.py \
 --source /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TCGA_KIRC/raw/ \
 --save_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TCGA_KIRC/processed/ \
 --patch_size 512 \
 --step_size 512 \
 --patch_level 0 \
 --seg \
 --patch \
 --stitch \
 --preset tcga.csv

echo "[INFO] Segmentation and patching completed."

# Step 3: Set environment variable for checkpoint path
python remove_ext_LM.py \
  --file_path /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TCGA_KIRC/processed/ \
  --slide_ext .svs

# Step 3: Set environment variable for checkpoint path
export UNI_CKPT_PATH=/mnt/central_nas/rcc_volume/RCC/HE/checkpoints/uni/pytorch_model.bin

# Step 4: Extract features
CUDA_VISIBLE_DEVICES=0 python extract_features_fp.py \
  --data_h5_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TCGA_KIRC/processed/ \
  --data_slide_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TCGA_KIRC/raw/ \
  --csv_path /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TCGA_KIRC/processed/process_list_autogen.csv \
  --feat_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TCGA_KIRC/features/ \
  --batch_size 512 \
  --slide_ext .svs \
  --model_name uni_v1 \
  --target_patch_size 256

echo "[INFO] Feature extraction completed."