## Genepi Hackathon
Welcome to the Genepi MinION Hackathon! Your task today is to analyse mtDNA data generated from Oxford Nanopore. 

## Setup
* Create a Word Document (named: SS23_NGS_PHD_Surname.docx) and document what you did (e.g. commands, screenshots, graphics). This file must be sent to us at the end of the class.
* Create a folder `project-day` within  `genepi-teaching/students/<your-q-number>`. 
* Copy resulting fastqs from one of the barcodes (barcode 01 - barcode 12) to project-day. The files are located here: `~/genepi-teaching/ngs-bioinformatics/2023-molmed/seq_data/fastq_pass/barcode*/*fastq`

## Run QC
Unlike to NGS data, here we are using a different QC tool. The tool is called NanoPlot and is already installed. Got he [GitHub site](https://github.com/wdecoster/NanoPlot) and execute NanoPlot on your data. Copy the HTMP report to Windows and put the command / some of the graphs to your local Word file.  


### Run Mapping/Alignment
For mapping and alignment we are using [minimap2](https://github.com/lh3/minimap2). The tool is already installed, execute it on the raw FASTQ data (without applying any QC-trimming etc.). Convert the resulting \*.sam file to a \*.bam file and index it. The reference can be found here: `~/genepi-teaching/students/reference-data/chrM.fasta`

## Visualize Mapping
- Run `samtools depth` on your BAM file and (also use the`-a` option) and write the result to a file
- Download the file and visualize with e.g. Excel
- Have a look at the file with Tablet
      
### Variant Calling
Run Variant Calling with a tool created fot mtDNA data.
`/opt/tools/mutserve/mutserve call <your-bam.bam> --reference ~/genepi-teaching/students/reference-data/chrM.fasta --level 0.10 --output <output.vcf>`

### Haplogroups
mtDNA profiles can also be grouped into so called [haplogroups](https://en.wikipedia.org/wiki/Human_mitochondrial_DNA_haplogroup). 
- Upload the VCF File to https://haplogrep.i-med.ac.at
- Interpret the results (use the Haplogrep docs) and add information to your Word file.  

## Bonus: Automize steps
Summarize all commands into a simple Bash script and execute it. 
