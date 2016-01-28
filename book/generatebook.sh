#!/bin/bash

pandoc --from html --to epub3 \
--self-contained \
--standalone \
--epub-chapter-level=1 \
--epub-stylesheet=styles.css \
--epub-cover-image=assets/epubcover.jpg \
--epub-metadata=meta.xml \
--toc-depth=1 \
--include-in-header=assets/jquery-1.7.0.min.txt \
--include-in-header=assets/script.txt \
--output=ashes.epub title.html \
report1.html \
chapter1.html 

# 