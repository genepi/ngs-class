# Metagenomics Pipeline

After live sequencing using the MinION, we now have to analyze our data. Checkout the [Genepi Hackathon](https://github.com/seppinho/ngs-class/blob/master/scripts/project.md). 

After base calling is finished (using Albacore), FAST5 files have been created and uploaded to our server (location: `/scratch/ngs/experiment3`). This dir includes the merged results from our 2 runs (experiment 1 + 2). 
I'll use our metagenomics data from barcode 5 to go through the steps:

## Write FASTQ to home directory
      cd ~
      poretools fastq /scratch/ngs/experiment3/barcode05/> barcode05.fastq
      
## Use Kraken

      /opt/tools/kraken-tool/kraken --db /opt/tools/kraken/minikraken_20171013_4GB/ --threads 1 --fastq-input --preload --output kraken-out.txt barcode05.fastq
      
       /opt/tools/kraken-tool/kraken-report --db /opt/tools/kraken/minikraken_20171013_4GB kraken-out.txt > kraken-report.txt
       
     
       
## Analyse Report and select a genome       

        less kraken-report.txt

## Mapping

We identified e.g. "Klebsiella pneumoniae subsp. rhinoscleromatis SB3432" and downloaded the FASTA from [here](https://www.ncbi.nlm.nih.gov/nuccore/NC_021232.1).

       /opt/tools/minimap2/minimap2 -d klebsiella.mmi /scratch/ngs/metagenomics/fasta/klebsiella.fasta
       /opt/tools/minimap2/minimap2 -a klebsiella.mmi barcode05.fastq > barcode05.sam
       
## Variant Calling
       
       samtools sort barcode05.sam > barcode05.bam
       /opt/tools/freebayes/bin/freebayes --fasta-reference /scratch/ngs/metagenomics/fasta/klebsiella.fasta barcode05.bam > barcode05.vcf
       
       
       

