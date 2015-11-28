#!/usr/bin/make
# Zur Erstellung des Debian-Pakets notwendig (make DESTDIR=/root/sophomorix)
# Created by Rüdiger Beck (jeffbeck-at-web.de)
DESTDIR=


BIN=$(DESTDIR)/usr/bin
EMACS=$(DESTDIR)/etc/emacs/site-start.d

help:
	@echo ' '
	@echo 'Most common options of this Makefile:'
	@echo '-------------------------------------'
	@echo ' '
	@echo '   make help'
	@echo '      show this help'
	@echo ' '
	@echo '   make install'
	@echo '      install all stuff'
	@echo ' '
	@echo '   make deb'
	@echo '      create a debian package'
	@echo ' '


install:
	@echo '   * Installing lisp file'
	@install -d -m755 -oroot -groot $(EMACS)
	@install -oroot -groot --mode=0664 emacs/55linuxmuster-sphinx.el  $(EMACS)
	@echo '   * Installing compile script'
	@install -d -m755 -oroot -groot $(BIN)
	@install -oroot -groot --mode=0775 scripts/linuxmuster-sphinx-emacscompile $(BIN)

# build a package
deb:
	### deb
	@echo 'Did you do a dch -i ?'
	#@sleep 8
	dpkg-buildpackage -tc -uc -us -sa -rfakeroot
	@echo ''
	@echo 'Do not forget to tag this version in git'
	@echo ''


clean:
	# delete stuff after building package
