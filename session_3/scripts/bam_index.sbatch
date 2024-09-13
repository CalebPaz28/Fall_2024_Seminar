#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --mem 16G
#SBATCH --output=bam_index_%J_stdout.txt
#SBATCH --error=bam_index_%J_stderr.txt
#SBATCH --job-name=bam_index
# 

bash /home/biol726310/BIOL7263_Genomics/scripts/BWA/bam_index.sh
