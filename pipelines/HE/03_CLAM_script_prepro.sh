#!/bin/bash

# ## Discovery

# # Prerequisites: Conda environment active and correct working directory
# # Step 1: Create patches
# python create_patches_fp.py \
#  --source /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/raw/ \
#  --save_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/processed/ \
#  --patch_size 256 \
#  --seg \
#  --patch \
#  --stitch \
#  --preset LM_custom.csv

# # Step 2: Remove file extension
# python remove_ext_LM.py \
#   --file_path /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/processed/ \
#   --slide_ext .tif

# # Step 3: Set environment variable for checkpoint path
# export UNI_CKPT_PATH=/mnt/central_nas/rcc_volume/RCC/HE/checkpoints/uni/pytorch_model.bin

# # Step 4: Extract features
# CUDA_VISIBLE_DEVICES=0 python extract_features_fp.py \
#   --data_h5_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/processed/ \
#   --data_slide_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TME_archetypes/raw/ \
#   --csv_path /mnt/central_nas/rcc_volume/RCC/HE/CLAM//TME_archetypes/processed/process_list_autogen.csv \
#   --feat_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM//TME_archetypes/features/ \
#   --batch_size 512 \
#   --slide_ext .tif \
#   --model_name uni_v1

# echo "[INFO] Feature extraction completed."


# ## TCGA 

# # Prerequisites: Conda environment active and correct working directory
# # Step 1: Create patches
# # patch/step size 256 (own/CPTAC; 20x) or 512 (TCGA; 40x)
# python create_patches_fp.py \
#  --source /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TCGA_KIRC/raw/ \
#  --save_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TCGA_KIRC/processed/ \
#  --patch_size 512 \
#  --step_size 512 \
#  --patch_level 0 \
#  --seg \
#  --patch \
#  --stitch \
#  --preset tcga.csv

# echo "[INFO] Segmentation and patching completed."

# # Step 2: Remove file extension
# python remove_ext_LM.py \
#   --file_path /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TCGA_KIRC/processed/ \
#   --slide_ext .svs

# # Step 3: Set environment variable for checkpoint path
# export UNI_CKPT_PATH=/mnt/central_nas/rcc_volume/RCC/HE/checkpoints/uni/pytorch_model.bin

# # Step 4: Extract features
# # Target_patch_size 256 (TCGA), 224 (own/CPTAC; default)
# CUDA_VISIBLE_DEVICES=0 python extract_features_fp.py \
#   --data_h5_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TCGA_KIRC/processed/ \
#   --data_slide_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TCGA_KIRC/raw/ \
#   --csv_path /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TCGA_KIRC/processed/process_list_autogen.csv \
#   --feat_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/TCGA_KIRC/features/ \
#   --batch_size 512 \
#   --slide_ext .svs \
#   --target_patch_size 256 \
#   --model_name uni_v1 
  
# echo "[INFO] Feature extraction completed."





# ## CPTAC 
# 
# # Prerequisites: Conda environment active and correct working directory
# # Step 1: Create patches
# # patch/step size 256 (own/CPTAC; 20x) or 512 (TCGA; 40x)
# python create_patches_fp.py \
#  --source /mnt/central_nas/rcc_volume/RCC/HE/CLAM/CPTAC/raw/ \
#  --save_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/CPTAC/processed/ \
#  --patch_size 256 \
#  --step_size 256 \
#  --patch_level 0 \
#  --seg \
#  --patch \
#  --stitch \
#  --preset tcga.csv
# 
# echo "[INFO] Segmentation and patching completed."
# 
# # Step 2: Remove file extension
# python remove_ext_LM.py \
#   --file_path /mnt/central_nas/rcc_volume/RCC/HE/CLAM/CPTAC/processed/ \
#   --slide_ext .svs
# 
# # Step 3: Set environment variable for checkpoint path
# export UNI_CKPT_PATH=/mnt/central_nas/rcc_volume/RCC/HE/checkpoints/uni/pytorch_model.bin
# 
# # Step 4: Extract features
# # Target_patch_size 256 (TCGA), 224 (own/CPTAC; default)
# CUDA_VISIBLE_DEVICES=0 python extract_features_fp.py \
#   --data_h5_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/CPTAC/processed/ \
#   --data_slide_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/CPTAC/raw/ \
#   --csv_path /mnt/central_nas/rcc_volume/RCC/HE/CLAM/CPTAC/processed/process_list_autogen.csv \
#   --feat_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM/CPTAC/features/ \
#   --batch_size 512 \
#   --slide_ext .svs \
#   --target_patch_size 224 \
#   --model_name uni_v1 
#   
# 
# echo "[INFO] Feature extraction completed."

