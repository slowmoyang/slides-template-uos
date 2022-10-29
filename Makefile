NAME=main

.PHONY: clean cleanall

all: $(NAME).pdf

$(NAME).pdf: $(NAME).tex
	@mkdir -vp build
	latexmk -bibtex -pdf -pdflatex="lualatex -shell-escape -interactive=nonstopmode" -use-make $< -jobname=./build/$(NAME)

clean:
	latexmk -c -jobname=./build/$(NAME)

cleanall:
	rm -vf ./build/*
