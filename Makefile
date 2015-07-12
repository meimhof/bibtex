.PHONY: pdf html

all: pdf html


pdf:
	$(MAKE) -C pdf

html:
	$(MAKE) -C html


clean:
	$(MAKE) -C pdf clean
	$(MAKE) -C html clean
