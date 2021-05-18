## Mapping


## Task 1
Execute paired-end alignment. Pick a file from here: `/mnt/genepi-lehre/teaching/ngs-bioinformatics/data/fastq/exercises/miseq` and use this reference `/mnt/genepi-lehre/teaching/ngs-bioinformatics/data/ref/kiv2_6.fasta`
Command should look something like this:
`bwa mem <fasta-reference> <r1.fq> <r2.fq> > <aligned-file.sam>`

## Task 2 
Execute `samtools view -Sb <aligned-file.sam> > <aligned-file.bam>` to sort the file
 and `samtools index <aligned-file.bam>` to index the file.
 
## Task 3 
Run `samtools depth <file.bam>` on the file and interpret the output. Learn about the `-a` parameter and add it to your command. 

