#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --mem 30G
#SBATCH --output=nt_protein_blast_%J_stdout.txt
#SBATCH --error=nt_protein_blast_%J_stderr.txt
#SBATCH --job-name=nt_protein_blast
# 

bash /scratch/biol726310/BIOL7263_Genomics/rrv_project/scripts/nt_protein_blast.sh 