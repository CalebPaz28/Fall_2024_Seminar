#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --mem 16G
#SBATCH --output=ecoli_cover_%J_stdout.txt
#SBATCH --error=ecoli_cover_%J_stderr.txt
#SBATCH --job-name=ecoli_cover
# 

bash /home/biol726310/BIOL7263_Genomics/scripts/variant_calling/ecoli_cover.sh
