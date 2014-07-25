# This makefile builds the updates our working copy of
# the openSUSE build service coan rpm project and submits
# it for building.

topdir := $(realpath ../../..)
version := $(shell $(topdir)/perl/get_version.pl $(topdir))
spec_file = coan-$(version).spec
tarball = coan-$(version).tar.gz
osc_proj = home:imkinghan:coan:rpm
osc_proj_dir = home_imkinghan_coan_rpm
bld_dir = ..
working_copy = $(osc_proj_dir)/coan
osc_files = $(spec_file) $(tarball)
osc_working_files = $(addprefix $(working_copy)/,$(osc_files))
osc_new_files = $(addprefix $(bld_dir)/,$(osc_files))
osc_platform_archs := $(shell osc repositories home:imkinghan:coan:rpm)
archs = x86_64 i586
osc_platforms := $(patsubst i586,,$(patsubst x86_64,,$(osc_platform_archs)))

.PHONY: update clean upload status build working_copy

$(osc_new_files): working_copy

$(working_copy)/$(spec_file): $(bld_dir)/$(spec_file)
	cp -f $< $@ && touch $@

$(working_copy)/$(tarball): $(bld_dir)/$(tarball)
	cp -f $< $@ && touch $@

update: $(osc_working_files)
	cd $(working_copy) && rm -f *.rpm && osc up * && \
	for file in * ; do \
		tmp=`echo $$file | sed -e 's/$(version)//'` && \
		if [ "$$tmp" = "$$file" ]; then rm -f $$file; fi; \
	done && \
	osc addremove 


status: working_copy
	cd $(working_copy) && osc st

upload: update
	cd $(working_copy) && osc ci -m "coan update"

build: upload
	cd $(working_copy) && osc rebuild

working_copy:
	if [ ! -d $(osc_proj) ]; then osc co $(osc_proj) && ln -s $(osc_proj) ./$(osc_proj_dir); fi

	
download: working_copy
	cd $(working_copy) && rm -fr binaries/*.deb && \
	mkdir -p publish && rm -fr publish/*.deb && \
	for platform in $(osc_platforms); do \
		for arch in $(archs); do \
			osc getbinaries $$platform $$arch && \
			cd binaries && \
			rename "s/$(version)-\d+/$(version)-for-$$platform/"  *.rpm && \
			mv *.rpm ../publish && \
			cd .. ; \
		done; \
	done;

publish:
	cd $(working_copy)/publish && \
		scp *.rpm imkinghan,coan2@frs.sourceforge.net:/home/frs/project/c/co/coan2/v$(version)

clean:
	rm -fr $(osc_proj)
	rm -fr $(osc_proj_dir)

