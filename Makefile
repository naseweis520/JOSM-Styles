SUBDIRS := $(wildcard */)
ZIPS := $(addsuffix .zip,$(subst /,,$(SUBDIRS)))
all: $(ZIPS)

$(ZIPS) : %.zip : | %
	zip $@ $*/*

dist: $(ZIPS)
