#!/bin/bash

# Prerequisites: Conda environment active and correct working directory
# Step 1: Set environment variable for checkpoint path
#python create_patches_fp.py \
#  --source /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/raw/ \
#  --save_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/processed/ \
#  --patch_size 256 \
#  --seg \
#  --patch \
#  --stitch \
#  --preset LM_custom.csv

# Step 2: Set environment variable for checkpoint path
export UNI_CKPT_PATH=/mnt/central_nas/rcc_volume/RCC/HE/checkpoints/uni/pytorch_model.bin

# Step 3: Extract features
# NOTE: Make sure to remove file name extensions from *process_list_autogen.csv*.
CUDA_VISIBLE_DEVICES=0 python extract_features_fp.py \
  --data_h5_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/processed/ \
  --data_slide_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/raw/ \
  --csv_path /mnt/central_nas/rcc_volume/RCC/HE/CLAM//TME_archetypes/processed/process_list_autogen.csv \
  --feat_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM//TME_archetypes/features/ \
  --batch_size 512 \
  --slide_ext .tif \
  --model_name uni_v1

echo "[INFO] Feature extraction completed."