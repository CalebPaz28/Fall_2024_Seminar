#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --mem 16G
#SBATCH --output=sam_bam_sort_in_%J_stdout.txt
#SBATCH --error=sam_bam_sort_in_%J_stderr.txt
#SBATCH --job-name=sam_bam_sort_in
# 

bash /scratch/biol726310/BIOL7263_Genomics/rrv_project/scripts/sam_bam_sort_in.sh
