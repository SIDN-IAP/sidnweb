# Makefile for website.
# For now, it's just all static files to be copied from src/ to output/

COPY_FILES = $(patsubst src/%,output/%,$(shell find src -type f))

all: make_directories $(COPY_FILES)

make_directories:
	mkdir -p output/slides

output/%: src/%
	cp -f $< $@

