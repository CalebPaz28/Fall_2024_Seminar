## The only command not included here is the assembly step. The idea is that we can process the data all the way up to the assembly step.

## activate the class environment
mamba activate /home/mbtoomey/.conda/envs/BIOL7263_Genomics

## Downloading the DNA genome
wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/002/994/745/GCA_002994745.2_RchiOBHm-V2/GCA_002994745.2_RchiOBHm-V2_genomic.fna.gz -P /scratch/biol726310/BIOL7263_Genomics/rrv_project/reference_genome


## Downloading trascripts?
wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/002/994/745/GCA_002994745.2_RchiOBHm-V2/GCA_002994745.2_RchiOBHm-V2_genomic.gff.gz -P /scratch/biol726310/BIOL7263_Genomics/rrv_project/reference_genome

## Uncompressing the files
gunzip /scratch/biol726310/BIOL7263_Genomics/rrv_project/reference_genome/*.gz

## quality check of one sample (one pair)
fastqc /scratch/biol726310/BIOL7263_Genomics/rrv_project/SRR29872023_1.fastq -o /scratch/biol726310/BIOL7263_Genomics/rrv_project/
  
## quality check of one sample (two pair)
fastqc /scratch/biol726310/BIOL7263_Genomics/rrv_project/SRR29872023_2.fastq -o /scratch/biol726310/BIOL7263_Genomics/rrv_project/
  
## Making a directory for trimmed data
mkdir /scratch/biol726310/BIOL7263_Genomics/rrv_project/trimmed_data

## Using trimming software to initiate the trimming
trim_galore --paired --fastqc --gzip --cores 4 --length 100 /scratch/biol726310/BIOL7263_Genomics/rrv_project/SRR29872023_1.fastq /scratch/biol726310/BIOL7263_Genomics/rrv_project/SRR29872023_2.fastq --basename trimmed_reads -o /scratch/biol726310/BIOL7263_Genomics/rrv_project/trimmed_data

## Unload the current environment
mamba/conda deactivate 

## Activate a different environment
conda activate hisat2_env

## Unload the current environment
mamba/conda deactivate 

## Activate the class environment again
mamba activate /home/mbtoomey/.conda/envs/BIOL7263_Genomics

## Create the index for a reference seq
hisat2-build /scratch/biol726310/BIOL7263_Genomics/rrv_project/reference_genome/GCA_002994745.2_RchiOBHm-V2_genomic.fna /scratch/biol726310/BIOL7263_Genomics/rrv_project/reference_genome/indexed_genome

## Align the raw reads to the references
hisat2 -x /scratch/biol726310/BIOL7263_Genomics/rrv_project/reference_genome/indexed_genome -1 /scratch/biol726310/BIOL7263_Genomics/rrv_project/trimmed_data/trimmed_reads_val_1.fq.gz -2 /scratch/biol726310/BIOL7263_Genomics/rrv_project/trimmed_data/trimmed_reads_val_2.fq.gz -S /scratch/biol726310/BIOL7263_Genomics/rrv_project/hisat2.sam


## SAM to BAM conversion

## Sorting the BAM file


## Indexing the BAM file


## Check the alignment statistics


## Gathering unmapped reads


## Converting the BAM to fastq


## Create a nucleotide database with NCBI (for viruses)



## Create a protein database with Diamond(for viruses)


