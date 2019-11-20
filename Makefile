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

H07JOB = $(FILEPRE)07$(HOSUFF)
P07JOB = $(FILEPRE)07$(PRESUFF)
L07FLAGS = \def\TITLE{7. Flexion}\def\LECTURE{07}

H08JOB = $(FILEPRE)08$(HOSUFF)
P08JOB = $(FILEPRE)08$(PRESUFF)
L08FLAGS = \def\TITLE{8. Wortbildung}\def\LECTURE{08}

H09JOB = $(FILEPRE)09$(HOSUFF)
P09JOB = $(FILEPRE)09$(PRESUFF)
L09FLAGS = \def\TITLE{9. Konstituenten und Phrasen}\def\LECTURE{09}

H10JOB = $(FILEPRE)10$(HOSUFF)
P10JOB = $(FILEPRE)10$(PRESUFF)
L10FLAGS = \def\TITLE{10. Phrasen und Sätze}\def\LECTURE{10}

H11JOB = $(FILEPRE)11$(HOSUFF)
P11JOB = $(FILEPRE)11$(PRESUFF)
L11FLAGS = \def\TITLE{11. Relationen und Prädikate}\def\LECTURE{11}

H12JOB = $(FILEPRE)12$(HOSUFF)
P12JOB = $(FILEPRE)12$(PRESUFF)
L12FLAGS = \def\TITLE{12. Graphematik und Phonologie}\def\LECTURE{12}

H13JOB = $(FILEPRE)13$(HOSUFF)
P13JOB = $(FILEPRE)13$(PRESUFF)
L13FLAGS = \def\TITLE{13. Graphematik und Morphosyntax}\def\LECTURE{13}

create:
	mkdir -p ./output/includes

all: handouts presentations

handouts: h01 h02 h03 h04 h05 h06 h07 h08 h09 h10 h11 h12 hFull

presentations: p01 p02 p03 p04 p05 p06 p07 p08 p09 p10 p11 p12 pFull

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

h07: create
	$(LX) $(TEXFLAGS) -jobname=$(H07JOB) $(PREFLAGS) "$(L07FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(H07JOB)
	$(LX) $(TEXFLAGS) -jobname=$(H07JOB) "$(L07FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"

p07: create
	$(LX) $(TEXFLAGS) -jobname=$(P07JOB) $(PREFLAGS) "$(L07FLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(P07JOB)
	$(LX) $(TEXFLAGS) -jobname=$(P07JOB) "$(L07FLAGS)$(FINALFLAGS)"

h08: create
	$(LX) $(TEXFLAGS) -jobname=$(H08JOB) $(PREFLAGS) "$(L08FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(H08JOB)
	$(LX) $(TEXFLAGS) -jobname=$(H08JOB) "$(L08FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"

p08: create
	$(LX) $(TEXFLAGS) -jobname=$(P08JOB) $(PREFLAGS) "$(L08FLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(P08JOB)
	$(LX) $(TEXFLAGS) -jobname=$(P08JOB) "$(L08FLAGS)$(FINALFLAGS)"

h09: create
	$(LX) $(TEXFLAGS) -jobname=$(H09JOB) $(PREFLAGS) "$(L09FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(H09JOB)
	$(LX) $(TEXFLAGS) -jobname=$(H09JOB) "$(L09FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"

p09: create
	$(LX) $(TEXFLAGS) -jobname=$(P09JOB) $(PREFLAGS) "$(L09FLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(P09JOB)
	$(LX) $(TEXFLAGS) -jobname=$(P09JOB) "$(L09FLAGS)$(FINALFLAGS)"

h10: create
	$(LX) $(TEXFLAGS) -jobname=$(H10JOB) $(PREFLAGS) "$(L10FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(H10JOB)
	$(LX) $(TEXFLAGS) -jobname=$(H10JOB) "$(L10FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"

p10: create
	$(LX) $(TEXFLAGS) -jobname=$(P10JOB) $(PREFLAGS) "$(L10FLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(P10JOB)
	$(LX) $(TEXFLAGS) -jobname=$(P10JOB) "$(L10FLAGS)$(FINALFLAGS)"

h11: create
	$(LX) $(TEXFLAGS) -jobname=$(H11JOB) $(PREFLAGS) "$(L11FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(H11JOB)
	$(LX) $(TEXFLAGS) -jobname=$(H11JOB) "$(L11FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"

p11: create
	$(LX) $(TEXFLAGS) -jobname=$(P11JOB) $(PREFLAGS) "$(L11FLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(P11JOB)
	$(LX) $(TEXFLAGS) -jobname=$(P11JOB) "$(L11FLAGS)$(FINALFLAGS)"

h12: create
	$(LX) $(TEXFLAGS) -jobname=$(H12JOB) $(PREFLAGS) "$(L12FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(H12JOB)
	$(LX) $(TEXFLAGS) -jobname=$(H12JOB) "$(L12FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"

p12: create
	$(LX) $(TEXFLAGS) -jobname=$(P12JOB) $(PREFLAGS) "$(L12FLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(P12JOB)
	$(LX) $(TEXFLAGS) -jobname=$(P12JOB) "$(L12FLAGS)$(FINALFLAGS)"

h13: create
	$(LX) $(TEXFLAGS) -jobname=$(H13JOB) $(PREFLAGS) "$(L13FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(H13JOB)
	$(LX) $(TEXFLAGS) -jobname=$(H13JOB) "$(L13FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"

p13: create
	$(LX) $(TEXFLAGS) -jobname=$(P13JOB) $(PREFLAGS) "$(L13FLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(P13JOB)
	$(LX) $(TEXFLAGS) -jobname=$(P13JOB) "$(L13FLAGS)$(FINALFLAGS)"

hFull: create
	$(LX) $(TEXFLAGS) -jobname=$(H13JOB) $(PREFLAGS) "$(L13FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(H13JOB)
	$(LX) $(TEXFLAGS) -jobname=$(H13JOB) "$(L13FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"

pFull: create
	$(LX) $(TEXFLAGS) -jobname=$(P13JOB) $(PREFLAGS) "$(L13FLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(P13JOB)
	$(LX) $(TEXFLAGS) -jobname=$(P13JOB) "$(L13FLAGS)$(FINALFLAGS)"

clean:
	cd ./output/; \rm -f *.adx *.and *.aux *.bbl *.blg *.idx *.ilg *.ldx *.lnd *.log *.out *.rdx *.run.xml *.sdx *.snd *.toc *.wdx *.xdv *.nav *.snm *.bcf
	cd ./output/includes/; \rm -f *.aux

edit:
	mvim -c ':set spell spelllang=de' -c ':nnoremap <F15> ]s' -c ':nnoremap <F14> [s' main.tex includes/*.tex
