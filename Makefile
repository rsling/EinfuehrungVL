LX = xelatex
BX = biber

PREFLAGS = -no-pdf
TEXFLAGS = -output-directory=output
HANDIFLAGS = \def\HANDOUT{}
FINALFLAGS = \input{main}

H01JOB = SchaeferEinfuehrung01Handout
P01JOB = SchaeferEinfuehrung01Presentation
L01FLAGS = \def\TITLE{1. Sprache \& Sprache und Lehramt}\def\LECTURE{01}

create:
	mkdir -p ./output/includes

h01: create
	$(LX) $(TEXFLAGS) -jobname=$(H01JOB) $(PREFLAGS) "$(L01FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(H01JOB)
	$(LX) $(TEXFLAGS) -jobname=$(H01JOB) "$(L01FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"

p01: create
	$(LX) $(TEXFLAGS) -jobname=$(P01JOB) $(PREFLAGS) "$(L01FLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(P01JOB)
	$(LX) $(TEXFLAGS) -jobname=$(P01JOB) "$(L01FLAGS)$(FINALFLAGS)"

clean:
	cd ./output/; \rm -f *.adx *.and *.aux *.bbl *.blg *.idx *.ilg *.ldx *.lnd *.log *.out *.rdx *.run.xml *.sdx *.snd *.toc *.wdx *.xdv *.nav *.snm *.bcf
	cd ./output/includes/; \rm -f *.aux

edit:
	mvim -c ':set spell spelllang=de' -c ':nnoremap <F15> ]s' -c ':nnoremap <F14> [s' main.tex includes/*.tex
