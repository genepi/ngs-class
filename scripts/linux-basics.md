# Exercises Unix Basics

Execute the tasks and send the commands from Task 3 - Task 5 to sebastian.schoenherr@i-med.ac.at.

## Task 1
Connect to `genepi-lehre.i-med.ac.at` with your username/password using the Windows Powershell!

## Task 2 
Try to navigate on the Bash, create a folder and navigate around. 

## Task 3
`eGFR_SNPs.csv` and `HDL_SNPs.txt` are located in the folder `genepi-teaching/ngs-bioinformatics/data/unix/snp_lookup`. 
How many lines are included in each file? (Tip: You can either navigate to the folder with `cd` or you can execute grep directly from your home directory). 

## Task 4
Grep the SNP `rs13326165` and the SNP `rs17173637` from `eGFR_SNPs.csv` and write it to a file. 

## Task 5
Now grep the SNP `rs133299` from `eGFR_SNPs.csv`. How many lines are displayed? How would you interpret the output? What happens if you use the following grep command and what is the difference?: `grep -w rs133299 genepi-teaching/ngs-bioinformatics/data/unix/snp_lookup/eGFR_SNPs.csv`

## Task 6 [can be skipped]
Now, try to find the SNPs your boss asked you. Use the `grep` command to output the lines from `eGFR_SNPs.csv`. 
As a pattern file use `HDL_SNPs.txt`. Also add the `-w` option. 
Why do we need to add `-w`? (`eGFR_SNPs.csv` and `HDL_SNPs.txt`). How many SNPs did you find? Write them to a file and copy it to Windows.

Data: `genepi-teaching/ngs-bioinformatics/data/unix/snp_lookup`

