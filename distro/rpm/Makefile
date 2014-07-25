# This makefile builds the rpm project files for submission to the
# openSUSE build service

topdir := $(realpath ../..)
version := $(shell $(topdir)/perl/get_version.pl $(topdir))
src_dir := coan-$(version)
src_tarball := $(src_dir).tar.gz
spec_file = $(src_dir).spec
my_email := imk@burroingroingjoing.com
release := 1
made = $(spec_file) $(src_tarball)

.PHONY: all clean oscupdate oscupload oscstatus oscdownload oscclean

all: $(src_tarball)
     
$(topdir)/$(src_tarball):
	$(MAKE) -C $(topdir) dist

$(spec_file) : template.spec
	date=`date '+%a %b %d %Y'` && \
	sed -e 's|@version@|$(version)|g' -e 's|@rel@|$(release)|g' -e 's|@my_email@|$(my_email)|g' \
	-e "s|@date@|$$date|g" < $< > $@  


$(src_tarball): $(topdir)/$(src_tarball) $(spec_file)
	cp -f $< $@
	
clean:
	rm -f $(made) && $(MAKE) -C osc clean

oscupdate: $(src_tarball)
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

rpm: $(src_tarball) $(spec_file)
	cp -f $(src_tarball) ~/rpmbuild/SOURCES && \
	cp -f $(spec_file) ~/rpmbuild/SPECS && \
	cd ~/rpmbuild/SPECS && \
	rpmbuild -bb $(spec_file)

