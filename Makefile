
DESTDIR=/
PREFIX=/usr/local

all:
	@# do nothing yet

doc:
	$(MAKE) -f doc/Makefile html

install:
	env python2 setup.py install --root $(DESTDIR) --prefix $(PREFIX) --exec-prefix $(PREFIX)

install_osx:
	sudo python setup.py install --record installed_files.txt

uninstall_osx:
	sudo sh ./uninstall_osx.sh

.PHONY : doc
.PHONY : install
