#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=24
#SBATCH --mem 32G
#SBATCH --output=assembly_quast_%J_stdout.txt
#SBATCH --error=assembly_quast_%J_stderr.txt
#SBATCH --job-name=assembly_quast
# 

bash /scratch/biol726310/BIOL7263_Genomics/rrv_project/scripts/assembly_quast.sh
