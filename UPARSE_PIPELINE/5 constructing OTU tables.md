#constructing OTU tables

usearch -usearch_global all_merged.fastq -db otus.fasta -strand plus -id 0.97 -otutabout otutable.txt
