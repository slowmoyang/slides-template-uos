THESIS=main

.PHONY: clean

all: $(THESIS).pdf

$(THESIS).pdf: $(THESIS).tex
	@mkdir -vp build
	latexmk -bibtex -pdf -pdflatex="pdflatex -interactive=nonstopmode -shell-escape" -use-make $< -jobname=./build/$(THESIS)

clean:
	latexmk -C -jobname=./build/$(THESIS)
	rm -vf ./build/*
