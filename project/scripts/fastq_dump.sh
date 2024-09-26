module load SRA-Toolkit/3.0.3-gompi-2022a

fastq-dump --split-files $1 -O /scratch/biol726310/BIOL7263_Genomics/rrv_project
