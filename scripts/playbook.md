# Notizen Stefan

## Navigate to Folder
```sh
cd /opt/data/datasets
ls 
ls -lh 
```

## FastQC

### demo_miseq_lpa5104

1)
```sh
cd demo_miseq_lpa5104 
mkdir fastqc_report 
/opt/tools/FastQC/fastqc *.fastq --outdir=./fastqc_report/ 
ls fastqc-report (use autocomplete) 
```
2) Download the html file locally and look into both reads of 5296 and of 5118  

3) Merge all R1 and R2 reads separately: 
```sh
cat 5*R1*.fastq > merged_R1.fastq 
cat 5*R2*.fastq > merged_R2.fastq 
/opt/tools/FastQC/fastqc merged_R1.fastq --outdir=./fastqc_report/ 
/opt/tools/FastQC/fastqc merged_R2.fastq --outdir=./fastqc_report/ 
```
4) Download the reports locally and look at it in Firefox  

5) run multiqc in top folder of the project (no need to enter in fastqc_report):   

```sh
multiqc .  
```

6) Download the multiqc report html file and look at it in firefox 
