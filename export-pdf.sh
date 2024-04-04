#! /bin/bash
#
# export presentation as PDF
# requires `decktape` to be installed via
# `npm install decktape`
#
# Call Syntax::
#
#     ./export-pdf.sh <URI> <output-file>
#
# Example::
#
#     ./export-pdf.sh http://localhost:8888/notebooks/psyplot-framework-presentation.ipynb?token=b590036f0f4d111b7f7ff1f5a90ec48asdfasdfw35 psyplot-framework-presentation.pdf
# 
# ************************************
# Do not forget the token in the URL!!
# ************************************

node_modules/.bin/decktape rise \
	-s 2000x1500 \
	--pdf-author "Philipp S. Sommer" \
    --pdf-title "Using psyplot for visualizing unstructured data and vertical transects" \
	--pdf-subject "Using psyplot for visualizing unstructured data and vertical transects" \
	$@
