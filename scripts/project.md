## Individual projects

## Run Poretools stats & hist on fast5 files
      poretools stats fast5/

poretools hist fast5/
the hist command cannot be executed on the remote terminal

poretools hist --min-length 1000 fast5/
use the min-length parameter to specify a lower bound of the read lengths to be displayed in the histogram (to get rid of all very short fragments)

2. PAUVRE on fastq
pauvre marginplot –n --fastq <fastq_file>

write pauvre report in a file
pauvre marginplot –n --fastq <fastq_file> > pauvre_report.txt

look at report with (several options)
cat pauvre_report.txt
less pauvre_report.txt (hit “q” to exit)
vi pauvre_report.txt (write “:q” to exit)
