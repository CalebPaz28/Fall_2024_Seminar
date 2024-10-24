# converting the SAM to BAM
samtools view -S -b /scratch/biol726310/BIOL7263_Genomics/rrv_project/hisat2.sam > /scratch/biol726310/BIOL7263_Genomics/rrv_project/hisat2.bam


# sorting the BAM file
samtools sort /scratch/biol726310/BIOL7263_Genomics/rrv_project/hisat2.bam -o /scratch/biol726310/BIOL7263_Genomics/rrv_project/sorted_hisat2.bam


# indexing the BAM (used for IGV) and should generate and .bai file
samtools index /scratch/biol726310/BIOL7263_Genomics/rrv_project/sorted_hisat2.bam


# using samtools flagstat for checking the alignment
samtools flagstat /scratch/biol726310/BIOL7263_Genomics/rrv_project/sorted_hisat2.bam > /scratch/biol726310/BIOL7263_Genomics/rrv_project/mappingstats.txt


# using qualimap to check the alignment
qualimap bamqc -outdir /scratch/biol726310/BIOL7263_Genomics/rrv_project/bamqc -bam /scratch/biol726310/BIOL7263_Genomics/rrv_project/sorted_hisat2.bam -gff /scratch/biol726310/BIOL7263_Genomics/rrv_project/reference_genome/GCA_002994745.2_RchiOBHm-V2_genomic.gff