#!/bin/sh

pdflatex rh_table.tex
convert -density 600 -colorspace RGB rh_table.pdf rh_table.png
rm rh_table.pdf
