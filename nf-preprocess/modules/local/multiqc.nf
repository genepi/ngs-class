process RUN_MULTIQC {
  input:
	  path json
  output:
	  path "*.html"
	"""
	 multiqc --file-list ${json} -o out.html
	"""
}
