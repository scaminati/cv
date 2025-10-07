.PHONY: all

CC = xelatex
SRC_DIR = src
CV_DIR = src/cv
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

src: $(foreach x, cv, $x.pdf)

cv.pdf: $(SRC_DIR)/cv.tex $(CV_SRCS)
	$(CC) -output-directory=$(SRC_DIR) $<
	mv $(SRC_DIR)/cv.pdf ./caminati-simone-cv.pdf

clean:
	rm -rf /*.pdf
