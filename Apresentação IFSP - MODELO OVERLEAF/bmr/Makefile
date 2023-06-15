# Makefile
# File: "/home/fran/sac2015/Makefile"
# Created: "Sex, 07 Jan 2005 14:44:03 -0200 (kassick)"
# Updated: "Wed, 03 Sep 2014 17:47:02 -0300 (fran)"
# $Id: Makefile,v 1.3 2006/12/19 00:47:55 rvkassick Exp $
# Copyright (C) 2005, Rodrigo Virote Kassick <rvkassick@inf.ufrgs.br> 

LATEX = pdflatex --shell-escape -halt-on-error -file-line-error
BIBTEX = bibtex
MAINFILE = slides


#Listas de targets pdfs que devem ser gerados apartir dos fontes em outros formatos

rawimgs := $(wildcard ../fig/*)

bibs    := $(wildcard ../bib/*)

styles := $(wildcard ../sty/*)

all: $(MAINFILE).pdf beamerclean

view: $(MAINFILE).pdf
	evince $(MAINFILE).pdf

pdf: $(MAINFILE).pdf

$(MAINFILE).pdf: *.tex $(bibs) $(rawimgs) $(styles)
#	$(LATEX) $(MAINFILE)
#	$(BIBTEX) $(MAINFILE) || echo BIBTEX SUCKS
#	$(LATEX) $(MAINFILE)
#	$(BIBTEX) $(MAINFILE) || echo BIBTEX SUCKS
	$(LATEX) $(MAINFILE)
	$(LATEX) $(MAINFILE)

draft: *.tex $(bibs) $(rawimgs) $(styles) 
	$(LATEX) $(MAINFILE)


*.ps: *.pdf
	pdf2ps -dLanguageLevel=2 $(MAINFILE).pdf -o $(MAINFILE).ps


.PHONY: clean texclean

texclean:
	rm -f *.pdf *.ps *.bbl *.aux *.blg *.log *.lot *.lof *.idx || echo "Clean"

clean:
	rm -f *.pdf *.ps *.bbl *.aux *.blg *.log *.lot *.lof || echo "Clean"
	rm -f *.pdf *.ps *.bbl *.aux *.blg *.log *.lot *.lof || echo "Clean"

beamerclean:
	rm -f *.ps *.bbl *.aux *.blg *.log *.lot *.lof *.idx *.toc *.snm *.out *.nav
