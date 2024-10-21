#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --mem 16G
#SBATCH --output=trim_galore_%J_stdout.txt
#SBATCH --error=trim_galore_%J_stderr.txt
#SBATCH --job-name=trim_galore
# 

bash /home/biol726310/BIOL7263_Genomics/pseudomonas_gm41/scripts/trim_galore.sh
