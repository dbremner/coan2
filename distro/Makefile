# This makefile by default builds the rpm and debian package-building files.
# The 'publish' target publishes all rpm and debian packages to sourceforge.

topdir = $(realpath ..)
version = $(shell ../perl/get_version.pl $(topdir))
dist_dir = coan-$(version)
dist_tarball = $(dist_dir).tar.gz
src_tarball = $(topdir)/$(dist_tarball)

ifndef subdirs
subdirs = rpm deb
endif

made = $(addsuffix /$(dist_tarball),$(subdirs))

.PHONY: all clean publish oscupdate oscupload oscstatus oscclean oscdownload

all: $(made)
     
$(made): $(src_tarball)
	$(MAKE) -C $(dir $@)
	
$(src_tarball):
	$(MAKE) -C $(topdir) dist

publish:
	for dir in $(subdirs); do $(MAKE) -C $$dir publish; done
	
clean:
	for dir in $(subdirs); do $(MAKE) -C $$dir clean; done

oscupdate:
	for dir in $(subdirs); do $(MAKE) -C $$dir $@; done
	 
oscupload:
	for dir in $(subdirs); do $(MAKE) -C $$dir $@; done

oscbuild:
	for dir in $(subdirs); do $(MAKE) -C $$dir $@; done

oscstatus:
	for dir in $(subdirs); do $(MAKE) -C $$dir $@; done

oscclean:
	for dir in $(subdirs); do $(MAKE) -C $$dir $@; done

oscdownload:
	for dir in $(subdirs); do $(MAKE) -C $$dir $@; done


