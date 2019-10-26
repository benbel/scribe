FROM debian:stable-slim

MAINTAINER benbel

RUN apt --yes update
RUN apt --yes upgrade
RUN apt --yes install texlive-full latexmk pandoc

ENV LANG C.UTF-8
