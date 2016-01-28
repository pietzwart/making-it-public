#!/bin/bash

pandoc --from html --to epub3 \
--self-contained \
--standalone \
--epub-chapter-level=1 \
--epub-stylesheet=styles.css \
--epub-cover-image=assets/epubcover.jpg \
--epub-metadata=meta.xml \
--toc-depth=1 \
--include-in-header=assets/jquery-1.11.3.min.js \
--include-in-header=assets/script.js \
--output=ashes.epub title.html \
report1.html \
chapter1.html 

# 