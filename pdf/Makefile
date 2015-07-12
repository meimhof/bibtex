# target: all - Default target.
all:    2014_Proceedings1.pdf 2015_Journal1.pdf

# target: help - Display callable targets.
help:
	grep -E "^# target:" [Mm]akefile


# target: 2014_Proceedings1.pdf - Build sample pdf.
2014_Proceedings1.pdf:
	pdflatex 2014_Proceedings1
	rm *.aux *.log

# target: 2015_Journal1.pdf - Build sample pdf.
2015_Journal1.pdf:
	pdflatex 2015_Journal1
	rm *.aux *.log


# target: clean - 
clean:
	rm 2014_Proceedings1.pdf 2015_Journal1.pdf
