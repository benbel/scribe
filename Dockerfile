FROM debian:stable-slim

MAINTAINER benbel

RUN apt --yes update
RUN apt --yes upgrade
RUN apt --yes install texlive-full latexmk pandoc r-base r-cran-tidyverse r-cran-rmarkdown
RUN Rscript -e 'install.packages("configr")'

ENV LANG C.UTF-8
