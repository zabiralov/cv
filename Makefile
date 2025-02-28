tc = pdflatex
tcflags = -halt-on-error

cv = azabiralov-cv

.SILENT: build


build:
	$(tc) $(tcflags) $(cv).tex

clean:
	rm -f $(cv).log $(cv).aux $(cv).out

test:
	lacheck $(cv).tex

