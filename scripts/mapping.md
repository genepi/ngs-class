## Mapping


## Task 1
Execute paired-end alignment. Pick a file from here: `/opt/ngs/fastq/exercises/miseq_lpa`
Command should look something like this:
`bwa mem /opt/ngs/ref/kiv2_6.fasta <file1> <file2> > aligned-file.sam`

## Task 2 
Execute `samtools sort aligned-file.sam > aligned-file.bam` to sort the file

## Task 3 
Go to [this page](http://quinlanlab.org/tutorials/samtools/samtools.html), 
learn about `samtools view` and output the first 10 reads. 
Explain 1 line of the BAM file.  
