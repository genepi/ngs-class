## Genepi MinION Hackathon
Welcome to the Genepi MinION Hackathon! Your task today is to analyse our created MinION metagenome data. 

Since you work on your local laptops, please install filezilla (https://filezilla-project.org/) to copy the result files from our remote machine. 

## Task 0 - Introduction
The first task is to create FASTQ files from the basecalled FAST5 files. For the conversion FAST5 to FASTQ the [poretools](https://poretools.readthedocs.io/) are used. An example can be found here:
    
    cd
    poretools fastq /opt/tools/poretools/test_data/ > test.fastq

The MinION fastq data can be found on the server at this location (/scratch/ngs/experiment1). 6 barcodes exist. To save time, each group should create the fastq file for 1 barcode and communicate the FASTQ location to the other students. 

  
 ## Task 1 - Initial Quality Control

### Task 1.1 - Run FastQC
Run the FASTQC program as learned (if you need help: https://github.com/seppinho/ngs-class/blob/master/scripts/Coassin_Tutorial.pdf) on all 6 files and summarize the results (e.g. copy some graphs or describe data).  

### Task 1.2 - Run Pauvre
A new QC tool for nanopore data is `pauvre`. The command you need is `pauvre marginplot --fastq <fastq-file>`  Save the results to a file using `>`. 

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

### Task 1.4 - Generate Histogramm Image from fast5 (does not work with putty!)
Now, use also poretools hist to create a histogramm. Write result image into a file, since we operate on the command line. Use only reads with a minimum base length of 1Kb. 

## Task 2 - Metagenomics
The next step in a typical NGS pipeline is to map & align our reads to the reference genome (e.g. using tools like `bwa mem`). Since our data is from a MinION metagenomic study, we have to find out the taxas first. 

### Task 2.1 - Run Kraken
For doing that, we have to introduce a new tool called [kraken](https://ccb.jhu.edu/software/kraken). Kraken is a system for assigning taxonomic labels to short DNA sequences, usually obtained through metagenomic studies. Please create a local out-folder in your home directory and specify the input fastq file!

      /opt/tools/kraken-tool/kraken --db /opt/tools/kraken/minikraken_20171013_4GB/ --threads 1 --fastq-input --preload --output <out-file> <input>
      
### Task 2.2 - Run Kraken Report
To create a report, do the following:

     /opt/tools/kraken-tool/kraken-report --db /opt/tools/kraken/minikraken_20171013_4GB <out-older> > <report-file>

### Task 2.3 - Analyse report
Find out which taxas are recognized in Barcode05 and 06.  What are the percentages? 
     
## Task 3 Align & Variant Calling
Select one bacteria of your choice. Find the reference genome sequence and run an alignment using https://github.com/lh3/minimap2 and call variants using freebayes (https://github.com/ekg/freebayes). 

## Task 4 - Bonus 1: Use Subset of reads
After how many reads/bp/run time would have it been possible to correctly recognize the taxas? Using the file time stamp copy some subsets of reads into a folder and rerun Centrifuge.      

## Task 5 - Bonus 2: Metyhlation Pipeline

      mkdir fastq
      poretools fasta fast5/ > fasta/reads.fasta
      grep ">" reads.fasta | wc -l

     bwa index meth_ref.fasta
     bwa mem -x ont2d meth_ref.fasta fasta/reads.fasta > meth_01.sam
     samtools view -bS meth_01.sam > meth_01.bam
     samtools sort meth_01.bam sorted_meth_01
     samtools index sorted_meth_01.bam

     /opt/tools/nanopolish/nanopolish call-methylation --progress -t 8 -r reads.fasta -g meth_ref.fasta -b sorted_meth_01.bam > methylation_01.tsv
 
     python /opt/tools/nanopolish/nanopolish/scripts/calculate_methylation_frequency.py -c 2.5 -i methylation_01.tsv > methylation_01_freq.tsv

