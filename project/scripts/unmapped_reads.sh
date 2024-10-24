# Extract unmapped reads from the sorted BAM file
samtools view -b -f 12 /scratch/biol726310/BIOL7263_Genomics/rrv_project/sorted_hisat2.bam -o /scratch/biol726310/BIOL7263_Genomics/rrv_project/unmapped/unmapped.bam


# Convert the .BAM file to a format (using bedtools) that can be read by SPAdes such as fastq
bedtools bamtofastq -i /scratch/biol726310/BIOL7263_Genomics/rrv_project/unmapped/unmapped.bam -fq /scratch/biol726310/BIOL7263_Genomics/rrv_project/unmapped/unmapped_r1.fastq -fq2 /scratch/biol726310/BIOL7263_Genomics/rrv_project/unmapped/unmapped_r2.fastq


# Convert the .BAM file to a format (using samtools) that can be read by SPAdes such as fastq
samtools fastq /scratch/biol726310/BIOL7263_Genomics/rrv_project/unmapped/unmapped.bam -1 /scratch/biol726310/BIOL7263_Genomics/rrv_project/unmapped/output_1.fastq -2 /scratch/biol726310/BIOL7263_Genomics/rrv_project/unmapped/output_2.fastq
