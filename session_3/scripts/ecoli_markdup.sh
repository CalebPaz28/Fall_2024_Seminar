## Sort BAM by 'read name'

samtools sort -n -o /scratch/biol726310/BIOL7263_Genomics/sequencing_data/ecoli/mapping_to_reference/ecoli_mapped_namesort.bam /scratch/biol726310/BIOL7263_Genomics/sequencing_data/ecoli/mapping_to_reference/ecoli_mapped.bam

## Instruct samtools to add special tags for the samtools markdup program

samtools fixmate -m /scratch/biol726310/BIOL7263_Genomics/sequencing_data/ecoli/mapping_to_reference/ecoli_mapped_namesort.bam /scratch/biol726310/BIOL7263_Genomics/sequencing_data/ecoli/mapping_to_reference/ecoli_mapped_namesort_fixmate.bam

## Re-sort our BAM file by chromosomal/position.

samtools sort -o /scratch/biol726310/BIOL7263_Genomics/sequencing_data/ecoli/mapping_to_reference/ecoli_mapped_namesort_fixmate_sort.bam /scratch/biol726310/BIOL7263_Genomics/sequencing_data/ecoli/mapping_to_reference/ecoli_mapped_namesort_fixmate.bam

## Mark and remove duplicates with '-r' option

samtools markdup -r /scratch/biol726310/BIOL7263_Genomics/sequencing_data/ecoli/mapping_to_reference/ecoli_mapped_namesort_fixmate_sort.bam /scratch/biol726310/BIOL7263_Genomics/sequencing_data/ecoli/mapping_to_reference/ecoli_mapped_namesort_fixmate_sort_markdup.bam

## Programs that let us view BAM files require an index file

samtools index /scratch/biol726310/BIOL7263_Genomics/sequencing_data/ecoli/mapping_to_reference/ecoli_mapped_namesort_fixmate_sort_markdup.bam
