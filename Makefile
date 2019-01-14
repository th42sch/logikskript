FILENAME=logik_tafelanschriebe
INFILES=logik_tafelanschriebe.tex biblio.bib


main.pdf: $(INFILES)
	pdflatex $(FILENAME)
	bibtex $(FILENAME)
	pdflatex $(FILENAME)
	pdflatex $(FILENAME)

clean:
	rm -f *~ *.aux *.out *.log *.gz *.toc *.bbl *.bcf *.blg *.tdo *.lof *.lot *.loe *.run.xml

