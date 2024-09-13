#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --mem 8G
#SBATCH --output=trim_galore%J_stdout.txt
#SBATCH --error=trim_galore%J_stderr.txt
#SBATCH --job-name=trim_galore
# 

bash /home/biol726310/BIOL7263_Genomics/scripts/trim_galore/trim_galore.sh
