#!/bin/bash
#SBATCH --job-name="gpt_5shot_4o"
#SBATCH --output="gpt_5shot_4o_arb2.out"
#SBATCH --partition=gpuA40x4
#SBATCH --mem=32G
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1  # could be 1 for py-torch
#SBATCH --cpus-per-task=16   # spread out to use 1 core per numa, set to 64 if tasks is 1
#SBATCH --constraint="scratch"
#SBATCH --gpus-per-node=1
#SBATCH --gpu-bind=closest   # select a cpu close to gpu on pci bus topology
#SBATCH --account=bcfk-delta-gpu
#SBATCH --no-requeue
#SBATCH -t 48:00:00
#SBATCH --mail-user=vpulav2@uic.edu
#SBATCH --mail-type=ALL

export OMP_NUM_THREADS=1  # if code is not multithreaded, otherwise set to 8 or 16
source /scratch/bcfk/vpulavarthi/VirtualEnv/chatgpt/bin/activate
srun python3 gpt_5shot_4o.py
deactivate
