#!/bin/bash
#SBATCH --job-name=r50
#SBATCH --mail-user=jiequancui@link.cuhk.edu.hk
#SBATCH --output=r50.log
#SBATCH --mail-type=ALL
#SBATCH --cpus-per-task=24
#SBATCH --gres=gpu:4
#SBATCH -p dvlab

source activate py3.8pt1.8.1 
./tools/dist_train.sh configs/paco_cityscapes/deeplabv3plus_r50-d8_512x1024_80k_cityscapes_paco.py 4 
