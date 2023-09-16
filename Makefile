# -*- mode: makefile; -*-

files_tex = $(wildcard *.tex)
files_pdf = $(files_tex:.tex=.pdf)

all: $(files_pdf)

%.pdf: %.tex
	@latexmk -shell-escape -xelatex $<

clean:
	@latexmk -c
	@rm -rf _minted* *.vrb *.pyg *.nav *.snm
