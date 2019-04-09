# Tool Installation & Trimming of FASTQ

A lot of different tools exist for trimming.

## Task 1: Installing and Executing Seqtk

Toolkit for processing sequences in FASTA/Q formats. First install the tool. Pick one of the files located in `/opt/ngs/fastq/exercises/miseq_lpa` and execute the command. Hint: A typo is included in the command. Try to locate it by executing simple `/.seqtk` 

    git clone https://github.com/lh3/seqtk
    cd seqtk; make
    ./seqtk triimfq -l 20 <file> > trimmed-seqtk.fq

## Task 2: Try to understand what the command did
Enter the following command and try to find the `-l` option
          
          /opt/tools/seqtk/seqtk trimfq

## Task 3: Run it with FastQC
Check graphically what it actually did. First execute the command below, than download results using WinSCP.
        
        /opt/tools/FastQC/fastqc trimmed-seqtk.fq --outdir test

## Task 4: Run fastp

Go to https://github.com/OpenGene/fastp and install the tool using “compile from source”. 
Pick a FASTQ file from `/opt/ngs/fastq/exercises/miseq_lpa`. Then transfer report locally and analyse it.


## Task 5: Bash Scripting

- Write a BASH Script that executes FASTQC and uses the file name as an input parameter ($1).
- Your task is to create a FASTA file from all FASTQ files in /opt/ngs/fastq/exercises/miseq_lpa. Use a for loop!

To create a FASTA tool use this tool: `seqtk seq -a in.fq.gz > out.fa`

Loop should look like this: 

```sh
for file in /path/to/folder/*
do
# do something on $file
echo "$file"
done
```
