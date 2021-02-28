#!/bin/bash -l
#SBATCH -J ftlipre
#SBATCH --mail-type=begin,fail
#SBATCH --mail-user=le.nguyen.001@student.uni.lu
#SBATCH -N 1
#SBATCH -n 16
#SBATCH -G 4
#SBATCH --time=2-00:00:00
#SBATCH -p gpu
#SBATCH --qos=normal

echo "== Starting run at $(date)"
echo "== Job ID: ${SLURM_JOBID}"
echo "== Node list: ${SLURM_NODELIST}"
echo "== Submit dir. : ${SLURM_SUBMIT_DIR}"

source .bsp06/bin/activate
