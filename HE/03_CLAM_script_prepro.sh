#!/bin/bash

# # Prerequisites: Conda environment active and correct working directory
# # Step 1: Set environment variable for checkpoint path
# python create_patches_fp.py \
#  --source /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TCGA_KIRC/raw/ \
#  --save_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TCGA_KIRC/processed/ \
#  --patch_size 256 \
#  --seg \
#  --patch \
#  --stitch \
#  --preset tcga.csv

# Step 2: Set environment variable for checkpoint path
export UNI_CKPT_PATH=/mnt/central_nas/rcc_volume/RCC/HE/checkpoints/uni/pytorch_model.bin

# Step 3: Extract features
# NOTE: Make sure to remove file name extensions from *process_list_autogen.csv*. Batchsize 512 for TMA.
CUDA_VISIBLE_DEVICES=0 python extract_features_fp.py \
  --data_h5_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TCGA_KIRC/processed/ \
  --data_slide_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TCGA_KIRC/raw/ \
  --csv_path /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TCGA_KIRC/processed/process_list_autogen.csv \
  --feat_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TCGA_KIRC/features/ \
  --batch_size 256 \
  --slide_ext .svs \
  --model_name uni_v1

echo "[INFO] Feature extraction completed."