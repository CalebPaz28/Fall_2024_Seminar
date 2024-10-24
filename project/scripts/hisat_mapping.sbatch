#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --mem 16G
#SBATCH --output=hisat_mapping_%J_stdout.txt
#SBATCH --error=hisat_mapping_%J_stderr.txt
#SBATCH --job-name=hisat_mapping
# 

bash /scratch/biol726310/BIOL7263_Genomics/rrv_project/scripts/hisat_mapping.sh
