TYPST ?= typst

all: tutorial.pdf

commit.txt:
	git describe --always --dirty="*" > $@

%.pdf: %.typ commit.txt
	$(TYPST) compile $< $@

.PHONY: commit.txt
