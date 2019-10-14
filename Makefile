LX = xelatex
BX = biber

PREFLAGS = -no-pdf
TEXFLAGS = -output-directory=output
HANDIFLAGS = \def\HANDOUT{}
FINALFLAGS = \input{main}
FILEPRE = SchaeferEinfuehrung
HOSUFF = Handout
PRESUFF = Presentation

H01JOB = $(FILEPRE)01$(HOSUFF)
P01JOB = $(FILEPRE)01$(PRESUFF)
L01FLAGS = \def\TITLE{1. Sprache \& Sprache und Lehramt}\def\LECTURE{01}

H02JOB = $(FILEPRE)02$(HOSUFF)
P02JOB = $(FILEPRE)02$(PRESUFF)
L02FLAGS = \def\TITLE{2. Phonetik}\def\LECTURE{02}

H03JOB = $(FILEPRE)03$(HOSUFF)
P03JOB = $(FILEPRE)03$(PRESUFF)
L03FLAGS = \def\TITLE{3. Segmentale Phonologie}\def\LECTURE{03}

H04JOB = $(FILEPRE)04$(HOSUFF)
P04JOB = $(FILEPRE)04$(PRESUFF)
L04FLAGS = \def\TITLE{4. Silbenphonologie}\def\LECTURE{04}

H05JOB = $(FILEPRE)05$(HOSUFF)
P05JOB = $(FILEPRE)05$(PRESUFF)
L05FLAGS = \def\TITLE{5. Wortklassen}\def\LECTURE{05}

H06JOB = $(FILEPRE)06$(HOSUFF)
P06JOB = $(FILEPRE)06$(PRESUFF)
L06FLAGS = \def\TITLE{6. Morphologie}\def\LECTURE{06}

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

h02: create
	$(LX) $(TEXFLAGS) -jobname=$(H02JOB) $(PREFLAGS) "$(L02FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(H02JOB)
	$(LX) $(TEXFLAGS) -jobname=$(H02JOB) "$(L02FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"

p02: create
	$(LX) $(TEXFLAGS) -jobname=$(P02JOB) $(PREFLAGS) "$(L02FLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(P02JOB)
	$(LX) $(TEXFLAGS) -jobname=$(P02JOB) "$(L02FLAGS)$(FINALFLAGS)"

h03: create
	$(LX) $(TEXFLAGS) -jobname=$(H03JOB) $(PREFLAGS) "$(L03FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(H03JOB)
	$(LX) $(TEXFLAGS) -jobname=$(H03JOB) "$(L03FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"

p03: create
	$(LX) $(TEXFLAGS) -jobname=$(P03JOB) $(PREFLAGS) "$(L03FLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(P03JOB)
	$(LX) $(TEXFLAGS) -jobname=$(P03JOB) "$(L03FLAGS)$(FINALFLAGS)"

h04: create
	$(LX) $(TEXFLAGS) -jobname=$(H04JOB) $(PREFLAGS) "$(L04FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(H04JOB)
	$(LX) $(TEXFLAGS) -jobname=$(H04JOB) "$(L04FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"

p04: create
	$(LX) $(TEXFLAGS) -jobname=$(P04JOB) $(PREFLAGS) "$(L04FLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(P04JOB)
	$(LX) $(TEXFLAGS) -jobname=$(P04JOB) "$(L04FLAGS)$(FINALFLAGS)"

h05: create
	$(LX) $(TEXFLAGS) -jobname=$(H05JOB) $(PREFLAGS) "$(L05FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(H05JOB)
	$(LX) $(TEXFLAGS) -jobname=$(H05JOB) "$(L05FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"

p05: create
	$(LX) $(TEXFLAGS) -jobname=$(P05JOB) $(PREFLAGS) "$(L05FLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(P05JOB)
	$(LX) $(TEXFLAGS) -jobname=$(P05JOB) "$(L05FLAGS)$(FINALFLAGS)"

h06: create
	$(LX) $(TEXFLAGS) -jobname=$(H06JOB) $(PREFLAGS) "$(L06FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(H06JOB)
	$(LX) $(TEXFLAGS) -jobname=$(H06JOB) "$(L06FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"

p06: create
	$(LX) $(TEXFLAGS) -jobname=$(P06JOB) $(PREFLAGS) "$(L06FLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(P06JOB)
	$(LX) $(TEXFLAGS) -jobname=$(P06JOB) "$(L06FLAGS)$(FINALFLAGS)"

clean:
	cd ./output/; \rm -f *.adx *.and *.aux *.bbl *.blg *.idx *.ilg *.ldx *.lnd *.log *.out *.rdx *.run.xml *.sdx *.snd *.toc *.wdx *.xdv *.nav *.snm *.bcf
	cd ./output/includes/; \rm -f *.aux

edit:
	mvim -c ':set spell spelllang=de' -c ':nnoremap <F15> ]s' -c ':nnoremap <F14> [s' main.tex includes/*.tex
