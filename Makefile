.PHONY: examples

CC = xelatex
CV_SRCS = $(shell find . -name '*.tex')

cv.pdf: cv.tex $(CV_SRCS)
	$(CC) $<

clean:
	rm -rf *.pdf
