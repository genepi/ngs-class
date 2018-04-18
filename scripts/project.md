## Genepi Hackathon
Welcome to the first Genepi Hackathon! Your task today as a to analyse data derived from the MinION, created within our course. 

## Task 0 - Introduction
The first task is to create FASTQ files from the FAST5 files, which are created by the base caller Albacore. For the conversion FAST5 to FASTQ the [poretools](https://poretools.readthedocs.io/) are used. An example can be found here:
    
    cd
    poretools fastq /opt/tools/poretools/test_data/ > test.fastq

 To save time, we already executed this command for our data. The MinION fastq data can be found on the server at this location (TODO).  
 
## Task 1 - Initial Quality Control

### Task 1.1 - Run FastQC
Run the FASTQC program as learned (if you need help: https://github.com/seppinho/ngs-class/blob/master/scripts/Coassin_Tutorial.pdf) and summarize the results (e.g. copy some graphs or describe data).  

## Task 1.2 - Run Pauvre
A new QC tool for nanopore is `pauvre`. The tool is already installed. The command you need is `pauvre stats --fastq <fastq-file>`.  Save the results to a file using `>`. Please describe the results!

### Task 1.3 - Generate Statistics from fast5
It is also possible to run statistics on the FAST5 files. The necessary tool is `poretools stats <fast5>`. Check out [this resource](https://github.com/seppinho/ngs-class/blob/master/scripts/commands.Rmd#run-poretools-stats--hist-on-fast5-files) for help. Save the following statistics to a local file for all 6 barcodes:

* Total reads
* total bp
* mean
* median
* min
* max
* N25
* N50
* N75

## Task 2 - Metagenomics
As learned, the next step would be to map & align our reads to the reference genome using tools like `bwa mem`. Since we don't know our sequenced products, we have to find out this now. 

### Task 2.1 - Run Kraken
For doing that, we have to introduce a new tool called [kraken](https://ccb.jhu.edu/software/kraken). Kraken is a system for assigning taxonomic labels to short DNA sequences, usually obtained through metagenomic studies. Please create a local out-folder in your home directory and specify the input fastq file!

      /opt/tools/kraken-tool/kraken --db /opt/tools/kraken/minikraken_20171013_4GB/ --threads 1 --fastq-input --preload --output <out-folder> <input>
      
### Task 2.2 - Run Kraken Report
To create a report, do the following:

     /opt/tools/kraken-tool/kraken-report --db minikraken_20171013_4GB/ <out-older> > <report-file>

### Task 2.3 - Analyse report
Find out which taxas are recognized in Barcode05 and 06.  What are the percentages? 

     
## Task 3 Align
Select one bacteria of your choice. Find the reference genome sequence and run an alignment using https://github.com/lh3/minimap2 and call variants using freebayes (https://github.com/ekg/freebayes). 

## Task 4 - Bonus
After how many reads/bp/run time would have it been possible to correctly recognize the taxas? Using the file time stamp copy some subsets of reads into a folder and rerun Centrifuge.      
