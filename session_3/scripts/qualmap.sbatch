#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --mem 16G
#SBATCH --output=qualmap_%J_stdout.txt
#SBATCH --error=qualmap_%J_stderr.txt
#SBATCH --job-name=qualmap
# 

bash /home/biol726310/BIOL7263_Genomics/scripts/BWA/qualmap.sh
