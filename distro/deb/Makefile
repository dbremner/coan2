# This makefile builds the debian project files for submission to the
# openSUSE build service
 
topdir := $(realpath ../..)
version := $(shell $(topdir)/perl/get_version.pl $(topdir))
src_dir := coan-$(version)
src_tarball := $(topdir)/$(src_dir).tar.gz
dist_tarball := coan_$(version)-1.tar.gz
orig_tarball := coan_$(version).orig.tar.gz
my_email := imk@burroingroingjoing.com

.PHONY: all clean oscupdate oscupload oscstatus oscdownload oscclean

all: $(dist_tarball)
     
$(src_tarball):
	$(MAKE) -C $(topdir) dist

$(src_dir): $(src_tarball)
	$(MAKE) clean && tar -xvf $< && \
	cd $@ && printf "\n" | dh_make --single -c bsd -e $(my_email) -f $(src_tarball) && \
	cd debian && \
	sed -e '/$$(MAKE)$$/a\
	\t$$(MAKE) check' -i rules && \
	sed -e 's| (Closes: #nnnn)  <nnnn is the bug number of your ITP>||g' -i changelog && \
	sed -e 's|<insert the upstream URL, if relevant>|http://http://coan2.sourceforge.net/|g' \
	-e 's|Section: unknown|Section: devel|g' \
	-e 's|Depends: |Depends: python, g++ (>= 4.7), |g' \
	-e '/^Description: <insert up to 60 chars description>/d' \
	-e '/^ <insert long description, indented with spaces>/d' -i control && \
	printf "Description: C/C++ configuration analyser.\n\
 Coan is a software engineering tool for analysing preprocessor-based\n\
 configurations of C or C++ source code. Its principal use is to simplify a\n\
 body of source code by eliminating any parts that are redundant with\n\
 respect to a specified configuration.\n\n" >> control && \
	sed -e 's|It was downloaded.*$$||g' \
	-e 's|^.*likewise for another author.*$$||g' \
	-e 's|<put author.s name and email here>|Mike Kinghan, $(my_email)|g' \
	-e 's|<Copyright (C) YYYY Name OfAuthor>|Copyright (C) Mike Kinghan 2009|g' -i copyright \
	&& rm -f README.Debian

$(dist_tarball): $(src_dir)
	rm -fr *.dsc *.changes *.deb *.build debian.* && cd $< && debuild -S && cd .. && \
	cp -f $(src_dir)/debian/rules debian.rules && \
	cp -f $(src_dir)/debian/changelog debian.changelog && \
	cp -f $(src_dir)/debian/control debian.control && \
	rm -fr $(src_dir)/debian && \
	rm -f $(dist_tarball) && \
	tar -cvzf $(dist_tarball) $(src_dir) && \
	touch $(orig_tarball)
	
clean:
	for file in *; do if [ "$$file" != "Makefile" -a "$$file" != "osc" ]; then rm -fr $$file; fi; done && \
	$(MAKE) -C osc clean
 
oscupdate: $(dist_tarball)
	$(MAKE) -C osc update
	 
oscupload: oscupdate
	$(MAKE) -C osc upload

oscbuild: oscupload
	$(MAKE) -C osc build

oscstatus:
	$(MAKE) -C osc status

oscclean:
	$(MAKE) -C osc clean

oscdownload:
	$(MAKE) -C osc download

publish:
	$(MAKE) -C osc publish



