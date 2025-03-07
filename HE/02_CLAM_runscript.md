
# CLAM_REPO run script

## A - Subtyping test 

**Step 1:** Activate environment
```
conda activate clam_latest
cd /GitHub/RCC/HE/CLAM_REPO/
```

**Step 2:** Create patches
```
python create_patches_fp.py --source /mnt/central_nas/rcc_volume/RCC/HE/CLAM_REPO/subtyping_test/raw/ --save_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM_REPO/subtyping_test/processed/ --patch_size 256 --seg --patch --stitch --preset LM_custom.csv
```

**Step 3:** Run feature extraction using UNI
```
export UNI_CKPT_PATH=/mnt/central_nas/rcc_volume/RCC/HE/checkpoints/uni/pytorch_model.bin
```
*Note:* Make sure remove file name extensions from *process_list_autogen.csv* (see 01_DownloadModel script). 
```
CUDA_VISIBLE_DEVICES=0 python extract_features_fp.py --data_h5_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM_REPO/subtyping_test/processed/ --data_slide_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM_REPO/subtyping_test/raw/ --csv_path /mnt/central_nas/rcc_volume/RCC/HE/CLAM_REPO/subtyping_test/processed/process_list_autogen.csv --feat_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM_REPO/subtyping_test/features/ --batch_size 512 --slide_ext .tif --model_name uni_v1
```

**Step 4:** Create splits 

*Note:* Make sure to adjust main.py and create_splits_seq.py with your dataset specifications. This is using MCCV (Monte Carlo CV) not k-fold CV.

```
python create_splits_seq.py --task task_LM_subtyping_test --seed 1 --k 5 --splits_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM_REPO/subtyping_test/splits/
```

**Step 5** Training-Test
```
CUDA_VISIBLE_DEVICES=0 python main.py --task task_LM_subtyping_test --data_root_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM_REPO/subtyping_test/ --results_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM_REPO/subtyping_test/results/ --split_dir /mnt/central_nas/rcc_volume/RCC/HE/CLAM_REPO/subtyping_test/splits/ --exp_code dry_run --seed 1 --k 5 --label_frac 1 --max_epochs 5 --early_stopping --opt adam --drop_out 0.25 --lr 2e-4 --weighted_sample --bag_loss ce --inst_loss svm --model_type clam_sb --subtyping --embed_dim 1024
```

**Step 6** Evaluation