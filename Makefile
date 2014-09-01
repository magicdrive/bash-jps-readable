PREFIX=${HOME}/local
CURRENTDIR=$(shell pwd -L | perl -p -e 's/ /\\ /g')

all:
	@echo "make [intall|uninstall]"

install:
	mkdir -p $(PREFIX)/bin/
	cp -af $(CURRENTDIR)/jps-readable $(PREFIX)/bin/
	cp -af $(CURRENTDIR)/jpsr $(PREFIX)/bin/

uninstall:
	rm -f $(PREFIX)/bin/jps-readable
	rm -f $(PREFIX)/bin/jpsr

