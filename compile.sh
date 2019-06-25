#!/bin/sh

# compile LaTeX documents using a Docker container
#
# for continuous compilation:
# $ source compile.sh -pvc my_doc.tex


VERSION="v0.1";

# using shell-escape by default (needed for beamer with minted)
docker run -it --user="$(id -u):$(id -g)" \
       -v ${PWD}:/home/lab felix11h/docker-texlive-2015:$VERSION \
       -pdf -latexoption="-shell-escape" $@

echo ""
echo ""
echo "Using TeX Live 2015 Docker image, version "$VERSION"."
echo ""
echo ""


# Doesn't work? Let me know!
# felix11h.dev@gmail.com
