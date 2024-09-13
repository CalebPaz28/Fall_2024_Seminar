#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --mem 16G
#SBATCH --output=sam_sort_%J_stdout.txt
#SBATCH --error=sam_sort_%J_stderr.txt
#SBATCH --job-name=samtools_sort
# 

bash /home/biol726310/BIOL7263_Genomics/scripts/BWA/samtools_sort.sh
