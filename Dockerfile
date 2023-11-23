FROM debian:stable-slim

MAINTAINER benbel

RUN apt --yes update
RUN apt --yes upgrade

RUN apt --yes install texlive-full
RUN apt --yes install latexmk
RUN apt --yes install pandoc
RUN apt --yes install r-base
RUN apt --yes install r-cran-tidyverse
RUN apt --yes install r-cran-rmarkdown
RUN apt --yes install python3-pip

RUN Rscript -e 'install.packages("configr")'

ENV LANG C.UTF-8
