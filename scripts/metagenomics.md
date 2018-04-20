## Metagenomics Pipeline

After live sequencing using the MinION, we now have to analyze our data. Checkout the [Genepi Hackathon](https://github.com/seppinho/ngs-class/blob/master/scripts/project.md). 

After base calling is finished (using Albacore), fast5 files have been created and uploaded to our server (location: `/scratch/ngs/experiment3`; this dir includes the merged results from our 2 runs (experiment 1 + 2). 

I'll use our metagenomics data from barcode 6 to go through the steps:

### Write FASTQ to home directory
      cd ~
      poretools fastq /scratch/ngs/experiment3/barcode06/> barcode06.fastq
