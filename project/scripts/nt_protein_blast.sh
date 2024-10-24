## This is supposed to generate a .csv file for nucleotide search
#blastn -query /scratch/biol726310/BIOL7263_Genomics/rrv_project/assembly/spades_assembly/transcripts.fasta -db /scratch/biol726310/BIOL7263_Genomics/rrv_project/databases/virus_db -out /scratch/biol726310/BIOL7263_Genomics/rrv_project/blasting/nt_results.csv -evalue 1e-5 -max_target_seqs 5 -num_threads 20 -outfmt "10 qseqid sseqid pident length mismatch gapopen qstart qend sstart send evalue bitscore"


## This is supposed to generate a .csv file for protein search
diamond blastx -d /scratch/biol726310/BIOL7263_Genomics/rrv_project/databases/protein_db/virus_protein_db.dmnd -q /scratch/biol726310/BIOL7263_Genomics/rrv_project/assembly/spades_assembly/transcripts.fasta --outfmt 6 qseqid stitle pident length mismatch gapopen qstart qend sstart send evalue bitscore --max-target-seqs 5 --threads 20 | sed 's/\t/,/g' > /scratch/biol726310/BIOL7263_Genomics/rrv_project/blasting/diamond_results.csv
