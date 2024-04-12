# syntax=docker/dockerfile:1

FROM texlive/texlive AS build-stage
COPY science.tex /workdir/
WORKDIR /workdir
RUN latexmk -lualatex science.tex

FROM scratch AS export-stage
COPY --from=build-stage /workdir /
