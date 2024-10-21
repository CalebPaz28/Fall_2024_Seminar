#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --mem 16G
#SBATCH --output=align_hybrid_%J_stdout.txt
#SBATCH --error=align_hybrid_%J_stderr.txt
#SBATCH --job-name=align_hybrid
# 

bash /home/biol726310/BIOL7263_Genomics/pseudomonas_gm41/scripts/align_hybrid.sh
