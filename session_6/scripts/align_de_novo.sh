## Index our contigs 
bwa index /scratch/biol726310/BIOL7263_Genomics/sequencing_data/ecoli/assembly/contigs.fasta

## Align QC reads to contigs and output the SAM file
bwa mem -t 2 /scratch/biol726310/BIOL7263_Genomics/sequencing_data/ecoli/assembly/contigs.fasta /scratch/biol726310/BIOL7263_Genomics/sequencing_data/ecoli/trimmed_reads_val_1.fq.gz /scratch/biol726310/BIOL7263_Genomics/sequencing_data/ecoli/trimmed_reads_val_2.fq.gz > /scratch/biol726310/BIOL7263_Genomics/sequencing_data/ecoli/assembly/mapping_to_assembly/contigs_mapped.sam 

## Convert the SAM to BAM
samtools view -bS /scratch/biol726310/BIOL7263_Genomics/sequencing_data/ecoli/assembly/mapping_to_assembly/contigs_mapped.sam >  /scratch/mbtoomey/BIOL7263_Genomics/sequencing_data/ecoli/assembly/mapping_to_assembly/contigs_mapped.bam

## Sort the BAM file
samtools sort -o /scratch/biol726310/BIOL7263_Genomics/sequencing_data/ecoli/assembly/mapping_to_assembly/contigs_mapped_sorted.bam /scratch/biol726310/BIOL7263_Genomics/sequencing_data/ecoli/assembly/mapping_to_assembly/contigs_mapped.sam

## Index the BAM file
samtools index /scratch/biol726310/BIOL7263_Genomics/sequencing_data/ecoli/assembly/mapping_to_assembly/contigs_mapped_sorted.bam
