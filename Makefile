NAME=main

.PHONY: clean

all: $(NAME).pdf

$(NAME).pdf: $(NAME).tex
	@mkdir -vp build
	latexmk -bibtex -pdf -pdflatex="lualatex -shell-escape -interactive=nonstopmode" -use-make $< -jobname=./build/$(NAME)

clean:
	latexmk -C -jobname=./build/$(NAME)
	rm -vf ./build/*
