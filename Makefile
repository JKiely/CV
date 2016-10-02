.PHONY: all travis html readme pdf clean

all: html readme pdf

travis: html readme pdf

html: cv.md templates/header.css
	pandoc cv.md -s -H templates/header.css -o index.html

readme: cv.md
	cp cv.md readme.md

pdf: cv.md templates/header.tex
	pandoc cv.md -H templates/header.tex -o j_kiely_cv.pdf

clean:
		rm index.html
		rm readme.md
