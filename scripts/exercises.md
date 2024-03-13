# Exercises

## Start
### Task 0
Create a local MS Word File name it `024_ngs_phd_<surename>.docx`. Replace <surename> with your actual name. 
Copy commands, useful information, links etc to this file. This file should help you to reproduce steps from home after the class is over. 

## Linux 
## Task 1
Connect to `genepi-lehre.i-med.ac.at` with your username/password using the Windows Powershell

## Task 2 
Try to navigate on the Bash, create a folder and navigate around. 

## Task 3
`eGFR_SNPs.csv` and `HDL_SNPs.txt` are located in the folder **teaching/ngs/data/unix/snp_lookup**. 
How many lines are included in each file? (Tip: You can either navigate to the folder with `cd` or you can execute grep directly from your home directory). 

## Task 4
Grep the SNP `rs13326165` and the SNP `rs17173637` from `eGFR_SNPs.csv` and write it to a file. 

## Task 5
Now grep the SNP `rs133299` from `eGFR_SNPs.csv`. How many lines are displayed? How would you interpret the output? What happens if you use the following grep command and what is the difference?: **grep -w rs133299 teaching/ngs/data/unix/snp_lookup/eGFR_SNPs.csv**

## Task 6 
Now, try to find the SNPs your boss asked you. Use the `grep` command to output the lines from `eGFR_SNPs.csv`. 
As a pattern file use `HDL_SNPs.txt`. Also add the `-w` option. 
Why do we need to add `-w`? (`eGFR_SNPs.csv` and `HDL_SNPs.txt`). How many SNPs did you find? Write them to a file and copy it to Windows.

Data: **teaching/ngs/data/unix/snp_lookup**

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
