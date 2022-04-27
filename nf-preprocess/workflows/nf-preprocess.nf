fastq_files_ch = Channel.fromPath(params.input)

include { RUN_FASTP } from '../modules/local/fastp'
include { RUN_MULTIQC } from '../modules/local/multiqc'

workflow NF_PREPROCESS {
    RUN_FASTP ( fastq_files_ch )
    RUN_MULTIQC ( RUN_FASTP.out.fastp_json.collect() )
    }
