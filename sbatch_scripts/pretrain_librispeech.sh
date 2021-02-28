#!/bin/bash -l
#SBATCH -J prelib
#SBATCH --mail-type=begin,fail
#SBATCH --mail-user=le.nguyen.001@student.uni.lu
#SBATCH -N 1
#SBATCH --ntasks-per-node=4
#SBATCH --gpus-per-task=1
#SBATCH -C volta32
#SBATCH --time=0-00:20:00
#SBATCH -p gpu
#SBATCH --qos=normal
#SBATCH --output='slurm_outputs/pretrain_libri_base_%A.out'

echo "== Starting run at $(date)"
echo "== Job ID: ${SLURM_JOBID}"
echo "== Node list: ${SLURM_NODELIST}"
echo "== Submit dir. : ${SLURM_SUBMIT_DIR}"

source .bsp06/bin/activate
HYDRA_FULL_ERROR=1
fairseq-hydra-train --config-dir librispeech/config/pretraining --config-name wav2vec2_base_librispeech
