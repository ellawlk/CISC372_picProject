#!/bin/bash -l
#SBATCH --job-name=image_openMP
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=10
#SBATCH --output image_openMP-job_%j.out
#SBATCH --error image_openMP-job_%j.err
#SBATCH --partition=standard

# Bind your OpenMP threads
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

# Start my application
srun image_openMP