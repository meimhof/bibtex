.PHONY: pdf html publist bibliography

all: pdf html publist bibliography


pdf:
	$(MAKE) -C pdf

html:
	$(MAKE) -C html

publist:
	$(MAKE) -C publist

bibliography:
	$(MAKE) -C bibliography

clean:
	$(MAKE) -C pdf clean
	$(MAKE) -C html clean
	$(MAKE) -C publist clean
	$(MAKE) -C bibliography clean
