all: publications.pdf

publications.pdf:
	pdflatex publications
	biber publications
	pdflatex publications
	biber publications
	pdflatex publications
	rm *.out *.aux *.blg *.bbl *.bcf *.log *.xml

clean:
	rm publications.pdf
