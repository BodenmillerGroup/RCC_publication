#!/bin/bash

# Set environment variable for checkpoint path
export UNI_CKPT_PATH=/mnt/central_nas/rcc_volume/RCC/HE/checkpoints/uni/pytorch_model.bin

# Step 3: Extract features
# NOTE: Make sure to create config file and move images around.
CUDA_VISIBLE_DEVICES=0 python create_heatmaps.py --config config_LM_TME_archetypes.yaml

echo "[INFO] Heatmap generation completed."