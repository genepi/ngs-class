## Mapping


## Task 1
Execute paired-end alignment. Pick a file from here: `~/genepi-teaching/ngs-bioinformatics/data/fastq/exercises/miseq`
Command should look something like this:
`bwa mem ~/genepi-teaching/ngs-bioinformatics/data/ref <file1> <file2> > ~/genepi-teaching/ngs-bioinformatics/students/<your-folder>/aligned-file.sam`

## Task 2 
Execute `samtools sort aligned-file.sam > aligned-file.bam` to sort the file
 and `samtools index aligned-file.bam` to index the file.
 
## Task 3 
Run `samtools depth` on the file and interpret the output. 

