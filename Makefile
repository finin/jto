
FILE     = jto
MYBIBLIO = jto

all:
	pdflatex ${FILE}
	bibtex ${FILE} -min-crossrefs=99 
	pdflatex ${FILE}

clean:
	rm -f *.bbl *.blg *.aux *.toc *.lot *.lof *.log *.out *.dvi ${FILE}.pdf ${FILE}.ps

tidy:
	rm -f *.bbl *.blg *.aux *.toc *.lot *.lof *.log ${FILE}.dvi ${FILE}.ps

