## Using trimming software to initiate the trimming
trim_galore --paired --fastqc --gzip --cores 4 --length 100 /scratch/biol726310/BIOL7263_Genomics/rrv_project/SRR29872023_1.fastq /scratch/biol726310/BIOL7263_Genomics/rrv_project/SRR29872023_2.fastq --basename trimmed_reads -o /scratch/biol726310/BIOL7263_Genomics/rrv_project/trimmed_data
