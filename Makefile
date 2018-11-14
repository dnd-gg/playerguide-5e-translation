.PHONY: all clean

LATEX ?= pdflatex

all: playerguide_german.pdf

clean:
	latexmk -C

%.pdf: %.tex
	latexmk --interaction=nonstopmode --pdf --pdflatex=$(LATEX) $<
