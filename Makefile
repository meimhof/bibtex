.PHONY: pdf html publist

all: pdf html publist


pdf:
	$(MAKE) -C pdf

html:
	$(MAKE) -C html

publist:
	$(MAKE) -C publist


clean:
	$(MAKE) -C pdf clean
	$(MAKE) -C html clean
	$(MAKE) -C publist clean
