UNAME := $(shell uname -s)

all:
ifeq ($(UNAME), Linux)
  	# Linux
		pdflatex sop.tex
		evince sop.pdf&
endif

ifeq ($(UNAME), Darwin)
  	# Mac
		pdflatex sop.tex
		open sop.pdf
endif

clean:
	#rm -rfv sop.pdf sop.aux
