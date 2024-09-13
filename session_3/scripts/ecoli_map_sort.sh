bwa mem -t 4 /scratch/biol726310/BIOL7263_Genomics/reference_sequences/ecoli/GCF_000005845.2_ASM584v2_genomic /scratch/biol726310/BIOL7263_Genomics/sequencing_data/ecoli/trimmed_reads_val_1.fq.gz /scratch/biol726310/BIOL7263_Genomics/sequencing_data/ecoli/trimmed_reads_val_2.fq.gz -o /scratch/biol726310/BIOL7263_Genomics/sequencing_data/ecoli/mapping_to_reference/ecoli_mapped.sam

samtools view -b -S -T /scratch/biol726310/BIOL7263_Genomics/reference_sequences/ecoli/GCF_000005845.2_ASM584v2_genomic.fna /scratch/biol726310/BIOL7263_Genomics/sequencing_data/ecoli/mapping_to_reference/ecoli_mapped.sam -o /scratch/biol726310/BIOL7263_Genomics/sequencing_data/ecoli/mapping_to_reference/ecoli_mapped.bam

samtools sort /scratch/biol726310/BIOL7263_Genomics/sequencing_data/ecoli/mapping_to_reference/ecoli_mapped.bam -o /scratch/biol726310/BIOL7263_Genomics/sequencing_data/ecoli/mapping_to_reference/ecoli_mapped_sorted.bam
