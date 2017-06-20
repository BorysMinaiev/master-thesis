#!/bin/bash

for i in master; do
	pdflatex $i-thesis
	biber 	 $i-thesis
	pdflatex $i-thesis
	pdflatex $i-thesis
done

rm {master}-thesis.{bib,aux,log,bbl,bcf,blg,run.xml,toc,tct}
