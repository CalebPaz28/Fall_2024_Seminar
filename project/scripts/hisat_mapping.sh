# constructing the index from the reference genome
hisat2-build /scratch/biol726310/BIOL7263_Genomics/rrv_project/reference_genome/GCA_002994745.2_RchiOBHm-V2_genomic.fna /scratch/biol726310/BIOL7263_Genomics/rrv_project/reference_genome/indexed_genome

# alignment of raw reads (trimmed) to reference
hisat2 -x /scratch/biol726310/BIOL7263_Genomics/rrv_project/reference_genome/indexed_genome -1 /scratch/biol726310/BIOL7263_Genomics/rrv_project/trimmed_data/trimmed_reads_val_1.fq -2 /scratch/biol726310/BIOL7263_Genomics/rrv_project/trimmed_data/trimmed_reads_val_2.fq -S /scratch/biol726310/BIOL7263_Genomics/rrv_project/hisat2.sam

