# Makefile for website.
# For now, it's just all static files to be copied from src/ to output/

COPY_FILES = $(patsubst src/%,output/%,$(wildcard src/*))

all: $(COPY_FILES)

output/%: src/%
	    cp -f $< $@

output/slides/%: src/slides/%
	    cp -f $< $@
