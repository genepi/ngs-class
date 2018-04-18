## Hackathon
Welcome to the first Genepi Hackathon! Your task today to analyse data derived from the MinION, created within our course. 

## Task 0
The first task is to create fastq files from the fast5 files, which are created by the base caller. For that, poretools is used. We already executed this command the fastqc data can be found on the server (TODO). To learn about the poretools command click [here](https://github.com/seppinho/ngs-class/blob/master/scripts/commands.Rmd#convert-fast5-to-fastq-with-poretools).

## FastQC

Run the FASTQC toolkit on the MinION data and summarize the results

## Metagenomics
### Generate Statistics
First, generate the following statistics for each barcode:

* Total reads
* total bp
* mean
* median
* min
* max
* N25
* N50
* N75

### Execute FASTQC and Pauvre plots
For all 6 samples save the html results to your results folder. Pauvre is a tool for nanopore data and the command can be found here. 

