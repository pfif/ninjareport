ARGS=-interaction=batchmode

all: tufte-report.pdf rapport.pdf

rapport.pdf: rapport.tex introduction.tex conclusion.tex \
	        annexes/*.tex chapitres/*.tex
	pdflatex $(ARGS) rapport

tufte-report.pdf: tufte-report.tex annexes/summarybook.tex
	pdflatex $(ARGS) tufte-report

clean:
	rm -rf *.aux *.log *.pdf *.toc
