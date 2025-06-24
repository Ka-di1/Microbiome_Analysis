#Import DNA sequences from OTU files into R
## Install packages
install.packages("BiocManager")

## install packages
BiocManager::install(c("Biostrings", "dada2"))

## Load the libraries
library(Biostrings)
library(dada2)

## Read the FASTA file
OTU_fasta <- readDNAStringSet("path to OTUs fasta file")

# Convert to character vector
seq <- as.character(OTU_fasta)


#Assign taxonomy
taxa <- assignTaxonomy(seq, 'path to taxa file', multithread=FALSE, tryRC=TRUE)
head(taxa)