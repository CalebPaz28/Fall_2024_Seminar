#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --mem 16G
#SBATCH --output=protein_db_%J_stdout.txt
#SBATCH --error=protein_db_%J_stderr.txt
#SBATCH --job-name=protein_db
# 

bash /scratch/biol726310/BIOL7263_Genomics/rrv_project/scripts/protein_db_download.sh
