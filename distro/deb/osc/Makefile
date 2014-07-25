# This makefile builds the updates our working copy of
# the openSUSE build service coan debian project and submits
# it for building.

topdir := $(realpath ../../..)
version := $(shell $(topdir)/perl/get_version.pl $(topdir))
dsc_file = coan_$(version)-1.dsc
orig_tarball = coan_$(version).orig.tar.gz
diff_arc = coan_$(version)-1.diff.gz
debian_tarball := coan_$(version)-1.debian.tar.gz
osc_proj = home:imkinghan:coan:deb
osc_proj_dir = home_imkinghan_coan_deb
bld_dir = ..
working_copy = $(osc_proj_dir)/coan
osc_files = $(dsc_file) $(orig_tarball) $(debian_tarball) $(diff_arc)
osc_working_files = $(addprefix $(working_copy)/,$(osc_files))
osc_new_files = $(addprefix $(bld_dir)/,$(osc_files))
osc_platform_archs := $(shell osc repositories home:imkinghan:coan:deb)
archs = x86_64 i586
osc_platforms := $(patsubst i586,,$(patsubst x86_64,,$(osc_platform_archs)))

.PHONY: update clean upload status build working_copy

update:  working_copy
	for file in $(osc_new_files); do \
		if [ -f $$file ]; then cp -f $$file $(working_copy); fi \
	done
	cd $(working_copy) && rm -f *.deb && osc up * && \
	for file in * ; do \
		tmp=`echo $$file | sed -e 's/$(version)//'` && \
		if [ "$$tmp" = "$$file" ]; then rm -f $$file; fi; \
	done && \
	osc addremove 
		
status: working_copy
	cd $(working_copy) && osc st

upload: update
	cd $(working_copy) && osc ci -m "coan update"

download: working_copy
	cd $(working_copy) && rm -fr binaries/*.deb && \
	mkdir -p publish && rm -fr publish/*.deb && \
	for platform in $(osc_platforms); do \
		for arch in $(archs); do \
			osc getbinaries $$platform $$arch && \
			cd binaries && \
			rename "s/$(version)-1/$(version)-for-$$platform/" *$(version)-1*.deb && \
			if [ -f *xUbuntu*.deb ]; then rename 's/xUbuntu/Ubuntu/' *xUbuntu*.deb; fi && \
			mv *.deb ../publish && \
			cd .. ; \
		done; \
	done;

build: upload
	cd $(working_copy) && osc rebuildpac

working_copy:
	if [ ! -d $(osc_proj) ]; then osc co $(osc_proj) && ln -s $(osc_proj) ./$(osc_proj_dir); fi


publish:
	cd $(working_copy)/publish && \
		scp *.deb imkinghan,coan2@frs.sourceforge.net:/home/frs/project/c/co/coan2/v$(version)

clean:
	rm -fr $(osc_proj)
	rm -fr $(osc_proj_dir)

