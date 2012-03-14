
build:
	pdflatex -halt-on-error document.tex

test:
	#$(MAKE) clean
	#latex -halt-on-error document.tex
	#bibtex document
	pdflatex -halt-on-error document.tex
	./focus &> /dev/null

open:
	open document.pdf

bib:
	latex -halt-on-error document.tex
	bibtex document

clean:
	rm -f *.out *.pdf *.aux *.dvi *.log *.blg *.bbl