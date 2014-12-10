OUTPUT = fundamentos-resumo
COMMAND= pdflatex -shell-escape -interaction=nonstopmode index.tex

all:
	$(COMMAND)
	$(COMMAND)
	$(COMMAND)
	pdflatex atividade.tex
	make clean

clean:
	rm -rf *.aux *.bbl *.toc *.out *.log *.nls *.nlo *.lof *.lot *.blg *.ilg *.nav *.snm

preview:
	$(COMMAND)
	evince --page-index 1 --presentation index.pdf 2>/dev/null

talk:
	rm -f index.pdf
	make 1>/dev/null 2>/dev/null
	evince --page-index 1 --presentation index.pdf 2>/dev/null

copy:
	cp index.pdf ~/Dropbox/Public/didatica-biologia.pdf
	cp atividade.pdf ~/Dropbox/Public/didatica-atividade.pdf
