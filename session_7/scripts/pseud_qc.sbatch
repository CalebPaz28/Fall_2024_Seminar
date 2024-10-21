#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --mem 8G
#SBATCH --output=pseud_qc_%J_stdout.txt
#SBATCH --error=pseud_qc_%J_stderr.txt
#SBATCH --job-name=pseud_qc
# 

bash /home/biol726310/BIOL7263_Genomics/pseudomonas_gm41/scripts/pseud_qc.sh
