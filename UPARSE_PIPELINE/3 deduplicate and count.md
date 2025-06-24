#deduplicate and count identical seq:
usearch -fastx_uniques all_filtered.fasta -fastaout uniques.fasta -relabel Uniq -sizeout

