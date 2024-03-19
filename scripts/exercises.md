# Exercises

## General information
* Every time you read something like <your_name>, or <q-number> or <q1> this is just a place holder. Replace it with the actual name! 
## Start
### Task 0
Create a local MS Word File name it `024_ngs_phd_<surename>.docx`. Replace <surename> with your actual name. 
Copy commands, useful information, links etc to this file. This file should help you to reproduce steps from home after the class is over. 

## Linux 
### Task 1
Connect to `genepi-lehre.i-med.ac.at` with your username/password using the Windows Powershell

### Task 2 
Try to navigate on the Bash, create a folder and navigate around. 

### Task 3
`eGFR_SNPs.csv` and `HDL_SNPs.txt` are located in the folder **teaching/ngs/data/unix/snp_lookup**. 
How many lines are included in each file? (Tip: You can either navigate to the folder with `cd` or you can execute grep directly from your home directory). 

### Task 4
Grep the SNP `rs13326165` and the SNP `rs17173637` from `eGFR_SNPs.csv` and write it to a file. 

### Task 5
Now grep the SNP `rs133299` from `eGFR_SNPs.csv`. How many lines are displayed? How would you interpret the output? What happens if you use the following grep command and what is the difference?: **grep -w rs133299 teaching/ngs/data/unix/snp_lookup/eGFR_SNPs.csv**

### Task 6  (with Stefan)
Now, try to find the SNPs your boss asked you. Use the `grep` command to output the lines from `eGFR_SNPs.csv`. 
As a pattern file use `HDL_SNPs.txt`. Also add the `-w` option. 
Why do we need to add `-w`? (`eGFR_SNPs.csv` and `HDL_SNPs.txt`). How many SNPs did you find? Write them to a file and copy it to Windows.

Data: **teaching/ngs/data/unix/snp_lookup**

## Mapping

### Task 1
In the first exercise we align data with `bwa mem`:
* Create a folder `mapping` under `teaching/students/<q-number>` and change to this folder. Substitute <q-number> with your q-number!
* Copy the files `4153_S13_L001_R1_001.fastq.gz` and `4153_S13_L001_R2_001.fastq.gz` from here: `~/teaching/ngs/data/fastq/exercises/miseq` using `cp <path_to_file> .`. (The point at the end of command means that the data is copied to the current location).
* Reference is available here: `~/teaching/ngs/data/ref/kiv2_6.fasta` 
* Update this command from the [Getting Started Guide](https://github.com/lh3/bwa?tab=readme-ov-file#getting-started). Please note that the `bwa index` command can be skipped. 
  `./bwa mem ref.fa read1.fq read2.fq | gzip -3 > aln-pe.sam.gz`

### Task 2 
Now, we convert the file to the BAM format.
* Use samtools to convert a SAM file to a BAM file. Ask Google or ChatGPT for help. 
* Now we have to sort the file by coordinates. Ask Google or ChatGPT for help.Explain the command!
* Create an index with `samtools index <bam_file>`. This will  create an index file. What do you think is this command doing?
 
### Task 3 
Run `samtools depth <aligned-file-sorted.bam>` on the file and interpret the output. Learn about the `-a` parameter and add it to your command. Write the output to a file.

### Tasks 4
Download the file to Windows with WinSCP. 

### Task 5
Install "Tablet" (*.exe availablle in the Shared Drive) and load the BAM file via *Open Assembly*. You also need to specify the reference, you can find the KIV_2.fasta reference in the Shared Drive.   

# Variant Calling

## Task 1 - Use the aligned file and call variants
Checkout [freebayes](https://github.com/ekg/freebayes#usage) and call your variants. As an input the aligned file (aligned.bam) is required. Write the output to a file ending with .vcf. (freebayes <ref> <bam> > out.vcf)

## Task 2 - Learn bcftools
[Bcftools](https://samtools.github.io/bcftools/bcftools.html) are utilities for variant calling and manipulating VCFs and BCFs. Try to learn the bcftools convert command extract a region from the vcf file. 

## Task 3 - Learn three commands
Again, go to the bcftools website and learn about three bcftools commands from the "list of commands". 

## Nextflow
### Task 1
Execute the pipeline with a test profile.
```
git clone https://github.com/genepi/ngs-class
cd ngs-class/nf-preprocess
export NXF_SINGULARITY_CACHEDIR=/mnt/genepi-lehre/teaching/ngs/singualarity/
nextflow run main.nf -profile singularity,test
```

### Task 2
Write a config file for your project (e.g. `projectXY.config`). The file looks similar to this one but you need to adapt the paths to your data. 
```
params {
    input         = "test-data/*.fastq"
    output        = "fastp-test"
}
```
Execute it as follows:
```
export NXF_SINGULARITY_CACHEDIR=/mnt/genepi-lehre/teaching/ngs/singualarity/
nextflow run main.nf -c projectXY.config -profile singularity
```

### Task 3
Go to https://nf-co.re/ and find a pipeline which could be useful in your field. Try to understand how to execute it!
