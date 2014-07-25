
topdir = $(shell ../perl/realpath.pl '..')
version = $(shell ../perl/get_version.pl $(topdir))

.phony: all website clean try_out publish

all: website

website: maintainer-doxygen/index.html coan_man_1.html LICENSE.BSD.html

maintainer-doxygen/index.html: $(topdir)/html/index.html
	$(MAKE) clean
	cd $(topdir) && $(MAKE) && $(MAKE) doxygen
	cd $(topdir)/html && rm -f *.md5
	cp -r $(topdir)/html maintainer-doxygen 

coan_man_1.html: $(topdir)/man/html/coan_man_1.html
	cp -f $< $@

$(topdir)/man/html/coan_man_1.html:
	$(MAKE) -C $(topdir)/man

LICENSE.BSD.html: $(topdir)/LICENSE.BSD
	echo '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">' > $@ && \
	echo '<html><body><pre>' >> $@ && \
	cat $(topdir)/LICENSE.BSD >> $@ && \
	echo '</pre></body></html>' >> $@	

clean:
	rm -fr maintainer-doxygen coan_man_1.html LICENSE.BSD.html

try_out:
	mkdir -p ~/public_html/coan
	rm -fr ~/public_html/coan/*
	cp -fr * ~/public_html/coan

publish: website
	rsync -avP -e ssh *.php *.html code_pics maintainer-doxygen imkinghan,coan2@web.sourceforge.net:/home/project-web/coan2/htdocs
	
	
	

