#!/bin/bash -l
#SBATCH -J prelib
#SBATCH --mail-type=begin,fail
#SBATCH --mail-user=le.nguyen.001@student.uni.lu
#SBATCH -N 4
#SBATCH --ntasks-per-node=4
#SBATCH --gpus-per-task=1
#SBATCH -C volta32
#SBATCH -p gpu
#SBATCH --time=2-00:00:00
#SBATCH --qos=normal
#SBATCH --output='slurm_outputs/<output_name>_%A.out'

echo "== Starting run at $(date)"
echo "== Job ID: ${SLURM_JOBID}"
echo "== Node list: ${SLURM_NODELIST}"
echo "== Submit dir. : ${SLURM_SUBMIT_DIR}"

source .bsp06/bin/activate
<command>
