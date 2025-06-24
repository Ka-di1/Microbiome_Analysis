# UPARSE-Based 16S rRNA Analysis Pipeline

This repository contains scripts for microbial community analysis using the **UPARSE** pipeline developed by Robert C. Edgar. 
The pipeline processes high-throughput amplicon sequencing data of 16S rRNA gene to generate operational taxonomic units (OTUs)

## workflow
- Merging pair-end reads
- Quality filtering 
- Dereplication of sequences
- OTU clustering (97% identity)
- Generation of OTU tables (Mapping reads to OTUs)

## Requirements

**version** : usearch v11.0.667_i86linux32
[USEARCH](https://www.drive5.com/usearch/) 


## Citation:
Edgar, R. C. (2013). UPARSE: highly accurate OTU sequences from microbial amplicon reads. Nature Methods, 10(10), 996–998.
https://doi.org/10.1038/nmeth.2604

## License

This repository is for academic use. USEARCH/UPARSE itself is not open-source; please refer to USEARCH licensing for details.


