# Tool Installation & Tool Execution

For all tasks use this input file: `~/genepi-teaching/ngs-bioinformatics/data/fastq/demo/miseq/5118_S39_L001_R1_001.fastq`

## Task 1: Install and Run Fastp

Go to https://github.com/OpenGene/fastp and install fastp using “compile from source” into your directory here:
```genepi-lehre/teaching/ngs-bioinformatics/students/<your-q-number>/fastp```

Pick a fastq file, execute fastp and transfer report locally

**Bonus Task**: Execute FastQC on the new file. 


## Task 2: Executing Seqtk

Seqtk is a toolkit for processing sequences in FASTA/Q formats. Please use seqtk to (a) extracts reads from a fastq file (using `sample`) and (b) to convert a fastq file to a fasta (using `seq -a`).

Save your output files in ```genepi-lehre/teaching/ngs-bioinformatics/students/<your-q-number>/seqtk```.


## Task 3: Create a script
Create a script and execute seqtk on all files in `~/genepi-teaching/ngs-bioinformatics/data/fastq/demo/miseq/`



