process RUN_FASTP {
  publishDir "${params.output}/reports", mode: "copy", pattern: '*.html'
  publishDir "${params.output}/fastq", mode: "copy", pattern: '*.fq'
  input:
  path fastq
  output:
  path "*.html", emit: fastp_html
  path "*.json", emit: fastp_json
  path "*.fq", emit: fastp_fastq_ch
  
  """
  fastp -i ${fastq} -o ${fastq.baseName}.fq -j ${fastq.baseName}.fastp.json -h ${fastq.baseName}.html -q 20 --cut_tail --cut_tail_window_size 25 --cut_tail_mean_quality 20
  """
}
