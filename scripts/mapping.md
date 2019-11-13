## Mapping


## Task 1
Execute paired-end alignment. Pick a file from here: `~/genepi-teaching/ngs-bioinformatics/data/fastq/exercises/miseq`
Command should look something like this:
`/opt/tools/genetics/bwa/bwa mem ~/genepi-teaching/ngs-bioinformatics/data/ref/kiv2_6.fasta <file1> <file2> > <home-dir>

## Task 2 
Execute `samtools sort <aligned-file.sam> > <aligned-file.bam>` to sort the file
 and `samtools index <aligned-file.bam>` to index the file.
 
## Task 3 
Run `samtools depth <file.bam>` on the file and interpret the output. 

