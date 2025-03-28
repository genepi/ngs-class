# Mapping and Variant Calling
## Mapping

### Task 1
In the first exerise we align data with `bwa mem`:
* Create a folder `mapping` under `genepi-teaching/students/<q-number>` and change to this folder. Substitute <q-number> with your q-number!
* Copy the files `4153_S13_L001_R1_001.fastq.gz` and `4153_S13_L001_R2_001.fastq.gz` from here: `/mnt/genepi-lehre/teaching/ngs/data/fastq/exercises/miseq` using `cp <source> .`. (The point at the end of command means that the data is copied to the current location). 
* Command should look something like this:
`bwa mem /mnt/genepi-lehre/teaching/ngs/data/ref/kiv2_6.fasta <r1.fq> <r2.fq> > 4153.sam`

### Task 2 
Now, we convert the file to the BAM format.
* Execute `samtools view -Sb 4153.sam > 4153.bam` to convert the file from SAM to BAM. 
* Execute `samtools sort 4153.bam -o 4153_sorted.bam` to sort the file by position. 
* Create an index with `samtools index 4153_sorted.bam`. This will create a index file (4153_sorted.bam.bai)
 
### Task 3 
Run `samtools depth <aligned-file-sorted.bam>` on the file and interpret the output. Learn about the `-a` parameter and add it to your command. 

### Tasks 4
Download the *. bam and *.bam.bai files to Windows

### Task 5
Install "Tablet" (*.exe available in the Shared Drive) and load the BAM file via *Open Assembly*. You also need to specify the reference, you can find the KIV_2.fasta reference in the Shared Drive.   
 
## Variant Calling

### Task 1 - Use the aligned file and call variants
Checkout [freebayes](https://github.com/ekg/freebayes#usage) and call your variants. As an input the aligned file (`4153_sorted.bam`) is required. Write the output to a file ending with .vcf. (freebayes <ref> <bam> > out.vcf)

### Task 2 - Learn bcftools
[Bcftools](https://samtools.github.io/bcftools/bcftools.html) are utilities for variant calling and manipulating VCFs and BCFs. Try to learn the bcftools convert command extract a region from the vcf file. 

