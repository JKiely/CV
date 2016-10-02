.PHONY: all travis html readme pdf clean

all: html readme pdf

travis: html readme pdf

html: cv.md templates/header.css
	pandoc cv.md -s -H templates/header.css -B templates/link_to_pdf.html -o index.html

readme: cv.md
	cp cv.md readme.md

pdf: cv.md templates/header.tex
	pandoc cv.md -H templates/header.tex -o j_kiely_cv.pdf

clean:
		rm index.html
		rm readme.md
		rm *.pdf
merge:
		git checkout gh-pages
		git merge master
		git checkout master
