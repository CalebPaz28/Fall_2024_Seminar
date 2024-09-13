#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=4
#SBATCH --mem 16G
#SBATCH --output=ecoli_vcf_%J_stdout.txt
#SBATCH --error=ecoli_vcf_%J_stderr.txt
#SBATCH --job-name=ecoli_vcf
# 

bash /home/biol726310/BIOL7263_Genomics/scripts/variant_calling/ecoli_vcf.sh
