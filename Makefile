CC = lualatex
# Find all .tex files EXCEPT cv.tex to avoid self-dependency loops
CV_SRCS = $(shell find . -name '*.tex' ! -name 'cv.tex')

cv.pdf: cv.tex $(CV_SRCS)
	$(CC) $<

.PHONY: clean
clean:
	rm -f *.pdf *.aux *.log *.out
