#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --mem 16G
#SBATCH --output=unmapped_reads_%J_stdout.txt
#SBATCH --error=unmapped_reads_%J_stderr.txt
#SBATCH --job-name=unmapped_reads
# 

bash /scratch/biol726310/BIOL7263_Genomics/rrv_project/scripts/unmapped_reads.sh
