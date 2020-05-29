for x in `find . -maxdepth 1 -type f -name "*.JPG"` ; do mv "$x" "${x%.JPG}.jpg"; done
