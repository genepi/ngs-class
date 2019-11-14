## Genepi MinION Hackathon
Welcome to the Genepi MinION Hackathon! Your task today is to analyse our created MinION metagenome data. 

Since you work on your local laptops, please install filezilla (https://filezilla-project.org/) to copy the result files from our remote machine. 

## Task Metagenomics
The next step in a typical NGS pipeline is to map & align our reads to the reference genome (e.g. using tools like `bwa mem`). Since our data is from a MinION metagenomic study, we have to find out the taxas first. 

### Run Kraken
For doing that, we have to introduce a new tool called [kraken](https://ccb.jhu.edu/software/kraken). Kraken is a system for assigning taxonomic labels to short DNA sequences, usually obtained through metagenomic studies. Please create a local out-folder in your home directory and specify the input fastq file. Tool is installed at /opt/tools/genetics/kraken/, please specify the complete path to kraken!

      kraken --db /opt/tools/genetics/kraken/minikraken_20171013_4GB/ --threads 1 --fastq-input --preload --output <out-file> <input>
      
### Run Kraken Report
To create a report, do the following:

     kraken-report --db /opt/tools/kraken/minikraken_20171013_4GB <out-older> > <report-file>

### Analyse report
Find out which taxas are recognized in Barcode05 and 06.  What are the percentages? 
     
## Align & Variant Calling
Select one bacteria of your choice. Find the reference genome sequence and run an alignment using https://github.com/lh3/minimap2 and call variants using freebayes (https://github.com/ekg/freebayes). 

## Task Metyhlation Pipeline

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

