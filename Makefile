.PHONY: all travis html readme pdf clean

all: html readme pdf

travis: html readme pdf

html: cv.md templates/header.css
	pandoc cv.md -s -H templates/header.css -B templates/link_to_pdf.html -o index.html

readme: cv.md templates/header.md
	pandoc cv.md -B templates/header.md -o readme.md

pdf: cv.md templates/header.tex
	pandoc cv.md -H templates/header.tex -o j_kiely_cv.pdf

clean:
	rm index.html
	rm readme.md
	rm *.pdf

merge:
ifneq ($(shell git rev-parse --abbrev-ref HEAD), master)
	$(error Not on branch master)
else
	git checkout gh-pages
	git merge master
	git checkout master
endif
