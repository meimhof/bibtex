.PHONY: pages

# target: all - Default target. Builds all pdfs.
all:    bibliography.pdf pages

# target: help - Display callable targets.
help:
	grep -E "^# target:" [Mm]akefile


# target: bibliography - Build bibliography pdf.
bibliography.pdf:
	java -jar ../jabref/jabref.jar -p jabref_prefs.txt -s -n -o bibliography.tex,Sortable ../publications.bib
	sed -i -e "s/SEP/}\\\index{/g" bibliography.tex
	for year in 2007 2008 2009 2010 2011 2012 2013 2014 2015 ; do \
	awk '/session\{'$$year'\}/&&c++>0 {next} 1' bibliography.tex > tmp; mv tmp bibliography.tex ;\
	done
	pdflatex bibliography
	makeindex bibliography
	pdflatex bibliography
	pdflatex bibliography
	rm -rf *.aux *.idx *.ilg *.ind *.log *.npc *.toc 


# target: pages - display page count of all targets.
pages:
	@echo -e "Target\t\t\t# Pages"
	@echo -e "-------------------------------"
	@echo -en "bibliography.pdf\t      "; pdfinfo bibliography.pdf | grep Pages | cut -d " " -f 11


# target: clean - Remove all temporary files.
clean:
	rm bibliography.pdf
