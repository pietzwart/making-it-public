#!/bin/bash

pandoc --from html --to epub3 --self-contained --epub-chapter-level=1 --epub-stylesheet=styles.css --epub-metadata=meta.xml --toc-depth=1 --output=ashes.epub title.html \
report1.html \
chapter1.html 

# --epub-cover-image=cover.jpg