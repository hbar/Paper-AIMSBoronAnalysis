# MAKEFILE for AIMS Boron Results Paper

# Ultimate target is the pdf
# all: AIMSBoronAnalysis.pdf

# Create .pdf from .tex list
# (run pdflatex-bibtex sequence to accomodate references)
AIMSBoronAnalysis.pdf: AIMSBoronAnalysis.tex
	pdflatex -shell-escape AIMSBoronAnalysis
	bibtex AIMSBoronAnalysis
	pdflatex -shell-escape AIMSBoronAnalysis
	pdflatex -shell-escape AIMSBoronAnalysis

$
# Clean up unneccessary dependencies by running "make clean"
.PHONY: clean

clean:
	-rm *.dvi *.log *.toc *.aux *.out *.bbl *.blg *.spl *~
	-rm AIMSBoronAnalysis.pdf
