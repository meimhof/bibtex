# target: all - Default target.
all:    ../upload/publications.html

# target: help - Display callable targets.
help:
	grep -E "^# target:" [Mm]akefile


# target: html - Build html page and copies pdfs to upload directory.
../upload/publications.html:
	#sh generate_publications.sh
	-cp ../pdf/*.pdf ../upload/pdf/ 												#copy pdfs to upload directory
	java -jar ../jabref/jabref.jar -p ../jabref/jabref_prefs.txt -s -n -o ../upload/publications.html,Sortable ../publications.bib	#generate html table
	sed -i -e's/<title>JabRef references<\/title>/<title>Firstname Lastname - Publications<\/title>/' ../upload/publications.html	#replace page header

# target: clean - 
clean:
	rm ../upload/pdf/*.pdf
	rm ../upload/publications.html
