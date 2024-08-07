process RUN_MULTIQC {
  publishDir "${params.output}/reports", mode: "copy", pattern: '*.html'
  input:
    path json
  output:
	  path "*.html"

	"""
	 multiqc ${json}
	"""
}
