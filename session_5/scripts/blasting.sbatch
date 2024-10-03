#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --mem 16G
#SBATCH --output=nblast_%J_stdout.txt
#SBATCH --error=nblast_%J_stderr.txt
#SBATCH --job-name=nblast
# 

bash /home/biol726310/BIOL7263_Genomics/scripts/blasting/blasting.sh
