LX = xelatex
BX = biber

FILEN = main
PREFLAGS = -no-pdf
TEXFLAGS = -output-directory=output

JOB_H01 = SchaeferEinfuehrung01Handout
ADDFLAGS_H01 = -jobname=$(JOB_H01) "\def\HANDOUT{}\def\TITLE{1. Sprache \& Sprache und Lehramt}\def\LECTURE{01}\input{main}"

create:
	mkdir -p ./output/includes

h01: create
	$(LX) $(TEXFLAGS) $(PREFLAGS) $(ADDFLAGS_H01) $(FILEN)
	cd ./output; $(BX) $(JOB_H01)
	$(LX) $(TEXFLAGS) $(ADDFLAGS_H01) $(FILEN)

clean:
	cd ./output/; \rm -f *.adx *.and *.aux *.bbl *.blg *.idx *.ilg *.ldx *.lnd *.log *.out *.rdx *.run.xml *.sdx *.snd *.toc *.wdx *.xdv *.nav *.snm *.bcf
	cd ./output/includes/; \rm -f *.aux

edit:
	mvim -c ':set spell spelllang=de' -c ':nnoremap <F15> ]s' -c ':nnoremap <F14> [s' $(FILEN).tex includes/*.tex
