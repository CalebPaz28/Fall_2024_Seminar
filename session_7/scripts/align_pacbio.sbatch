#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --mem 16G
#SBATCH --output=align_pacbio_%J_stdout.txt
#SBATCH --error=align_pacbio_%J_stderr.txt
#SBATCH --job-name=align_pacbio
# 

bash /home/biol726310/BIOL7263_Genomics/pseudomonas_gm41/scripts/align_pacbio.sh
