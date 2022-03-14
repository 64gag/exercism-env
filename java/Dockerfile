FROM ubuntu:focal

SHELL ["/bin/bash", "-c"]

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

RUN if [ ! -f "/etc/localtime" ] ; then ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime; fi
RUN apt-get update \
    && apt-get install -q -y --no-install-recommends tzdata \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update \
    && apt-get install -q -y --no-install-recommends locales \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update \
    && apt-get install -y software-properties-common openjdk-11-jdk gradle \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
