#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --mem 16G
#SBATCH --output=rose_reference_%J_stdout.txt
#SBATCH --error=rose_reference_%J_stderr.txt
#SBATCH --job-name=rose_reference
# 

bash /scratch/biol726310/BIOL7263_Genomics/rrv_project/scripts/rose_reference.sh
