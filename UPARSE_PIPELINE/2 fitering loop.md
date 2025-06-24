#fitering 
usearch -fastq_filter ../all_merged.fastq -fastq_maxee 1.0 -fastaout ../filtered.fasta

#concatenating
cat *_filtered.fasta > ../all_filtered.fasta

