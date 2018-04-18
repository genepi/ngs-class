## Genepi Hackathon
Welcome to the first Genepi Hackathon! Your task today as a to analyse data derived from the MinION, created within our course. 

## Task 0 - Introduction
The first task is to create fastq files from the fast5 files, which are created by the base caller. For this conversion, poretools is used. To save time, we already executed this command for you. The MinION fastq data can be found on the server (TODO). To learn about the poretools command click [here](https://github.com/seppinho/ngs-class/blob/master/scripts/commands.Rmd#convert-fast5-to-fastq-with-poretools).

## Task 1 - QC

### Task 1.1 - Run FastQC
Now, our fastq data is ready. Run the FASTQC program as learned in the course and summarize the results (e.g. copy some graphs or describe data).  

## Task 1.2 - Run Pauvre
A new QC tool for nanopore is pauvre stats. The tool is already installed (Just enter `pauvre stats`). Learn how to execute it [here](https://github.com/conchoecia/pauvre#pauvre-a-plotting-package-designed-for-nanopore-and-pacbio-long-reads) and save the results. Please describe what you see!

### Task 2.3 - Generate Statistics from fast5
Now generate the following statistics for each barcode using [poretools](https://poretools.readthedocs.io/). The necessary tool is `poretools stats <fast5>`. As you can see this tool operates on the fast5 files directly. Check out [this resource](https://github.com/seppinho/ngs-class/blob/master/scripts/commands.Rmd#run-poretools-stats--hist-on-fast5-files) for help.

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
As learned, the next step would be to map & align our reads to the reference genome. Since we don't know our genomes yet, we have to find out this now. 

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
