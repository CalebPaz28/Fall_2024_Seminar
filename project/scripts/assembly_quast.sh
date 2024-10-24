# RNA SPAdes
spades.py --rna --threads 24 -o /scratch/biol726310/BIOL7263_Genomics/rrv_project/assembly/spades_assembly -1 /scratch/biol726310/BIOL7263_Genomics/rrv_project/unmapped/output_1.fastq -2 /scratch/biol726310/BIOL7263_Genomics/rrv_project/unmapped/output_2.fastq


## QUAST (checking the assembly)
quast.py --output-dir /scratch/biol726310/BIOL7263_Genomics/rrv_project/assembly/spades_assembly/quast_files /scratch/biol726310/BIOL7263_Genomics/rrv_project/assembly/spades_assembly/transcripts.fasta
