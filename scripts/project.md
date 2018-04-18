## Hackathon
Welcome to the first Genepi Hackathon! Your task today to analyse data derived from the MinION, created within our course. 

## Task 0 - Introduction
The first task is to create fastq files from the fast5 files, which are created by the base caller. For that, poretools is used. We already executed this command the fastqc data can be found on the server (TODO). To learn about the poretools command click [here](https://github.com/seppinho/ngs-class/blob/master/scripts/commands.Rmd#convert-fast5-to-fastq-with-poretools).

## Task 1 - FastQC

Run the FASTQC toolkit on the MinION data and summarize the results

## Task 2 - Metagenomics
As learned, the next step would be to align our reads to the reference genome. Since we dont know our genomes yet, we have to do this now. 

### Task 2.1 - Generate Statistics
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

### Task 2.2 - Execute FASTQC and Pauvre plots
For all 6 samples save the html results to your results folder. Pauvre is a tool for nanopore data and the command can be found here. 

### Task 2.3 - Use Kraken
We have to find out which taxas are recognized in Barcode05 and 06? To which percentages? For doing that, we have to introduce a new tool called [kraken](https://ccb.jhu.edu/software/kraken).
Please create a local out-folder and specify the input fastq file!

      /opt/tools/kraken-tool/kraken --db /opt/tools/kraken/minikraken_20171013_4GB/ --threads 1 --fastq-input --preload --output <out-folder> <input>
      
To create a report, do the following:

     /opt/tools/kraken-tool/kraken-report --db minikraken_20171013_4GB/ <out-older> > <report-file>
     
     
## Task 3 Align
Select one bacteria of your choice. Find the reference genome sequence and run an alignment using minimap3. How well is the genome covered?

## Task 4 - Bonus
After how many reads/bp/run time would have it been possible to correctly recognize the taxas? Using the file time stamp copy some subsets of reads into a folder and rerun Centrifuge.      
