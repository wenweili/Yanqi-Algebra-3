MAINFILE=YAlg3
COVER=Cover-page
LATEXMK=latexmk

default:
	# Generating $(MAINFILE).pdf
	$(LATEXMK) -pdf -pdflatex="xelatex -synctex=1 -shell-escape -interaction=nonstopmode %O %S" $(MAINFILE)

nosync:
	# Generating $(MAINFILE).pdf
	$(LATEXMK) -pdf -pdflatex="xelatex -shell-escape -interaction=nonstopmode %O %S" $(MAINFILE)

clean:
	# Cleaning...
	@rm -f *.aux *.log *.idx *.ind *.ilg *.thm *.toc *.blg *.bbl *.bcf *.out
	@rm -f *.fls *.fdb_latexmk *.run.xml *.synctex.gz *.xdv *~ *.lof *.lot
	@rm -f .metadonnees*

tarball:
	@rm -f ../Yanqi-Algebra-3.tar.gz
	@tar --exclude .git -zcvf ../Yanqi-Algebra-3.tar.gz .

zip:
	@rm -f ../Yanqi-Algebra-3.zip
	@zip -r ../Yanqi-Algebra-3.zip .

.PHONY: clean
