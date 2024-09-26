#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --mem 8G
#SBATCH --output=rose_fastqc_%J_stdout.txt
#SBATCH --error=rose_fastqc_%J_stderr.txt
#SBATCH --job-name=rose_fastqc
# 

bash /scratch/biol726310/BIOL7263_Genomics/rrv_project/scripts/rose_fastqc.sh
