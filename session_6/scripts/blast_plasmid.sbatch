#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --mem 16G
#SBATCH --output=blast_plasmid_%J_stdout.txt
#SBATCH --error=blast_plasmid_%J_stderr.txt
#SBATCH --job-name=blast_plasmid
# 

bash /home/biol726310/BIOL7263_Genomics/scripts/assembly/blast_plasmid.sh
