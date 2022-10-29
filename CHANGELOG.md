# Change Log

-------------------------------------------------------------------------------
## `minted` requires `-shell-escape` flag to `pdflatex`
### error from build/main.log
```log
!Package minted Error: You must invoke LaTeX with the -shell-escape flag.
```
### solution
add `-shell-escape` flag to `pdflatex` in `Makefile`
```diff
< latexmk -bibtex -pdf -pdflatex="pdflatex -interactive=nonstopmode" -use-make $< -jobname=./build/$(THESIS)
---
> latexmk -bibtex -pdf -pdflatex="pdflatex -interactive=nonstopmode -shell-escape" -use-make $< -jobname=./build/$(THESIS)
```


-------------------------------------------------------------------------------
## `minted` requires `pygmentize`
### error from build/main.log
```log
!Package minted Error: You must have `pygmentize' installed to use this packag
```

### solution
install `pygments`
```bash
conda install -c conda-forge pygments
```
