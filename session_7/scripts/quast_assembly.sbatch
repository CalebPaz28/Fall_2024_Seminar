#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --mem 16G
#SBATCH --output=quast_assembly_%J_stdout.txt
#SBATCH --error=quast_assembly_%J_stderr.txt
#SBATCH --job-name=quast_assembly
# 

bash /home/biol726310/BIOL7263_Genomics/pseudomonas_gm41/scripts/quast_assembly.sh
