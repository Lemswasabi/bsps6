#!/bin/bash -l
#SBATCH -J prelib
#SBATCH --mail-type=begin,fail
#SBATCH --mail-user=le.nguyen.001@student.uni.lu
#SBATCH -N 4
#SBATCH --ntasks-per-node=28
#SBATCH --gpus-per-task=1
#SBATCH -C volta32
#SBATCH --time=2-00:00:00
#SBATCH -p gpu
#SBATCH --qos=normal
#SBATCH --output='slurm_outputs'

echo "== Starting run at $(date)"
echo "== Job ID: ${SLURM_JOBID}"
echo "== Node list: ${SLURM_NODELIST}"
echo "== Submit dir. : ${SLURM_SUBMIT_DIR}"

source .venv/bin/activate
python3 main.py --config config/libri/las_460_fixed_character.yaml --logdir las_460_fixed_character_logdir --name las_460_fixed_character
