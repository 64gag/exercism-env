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
    && apt-get install -y wget \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /tmp/exercism
WORKDIR /tmp/exercism
RUN wget "https://github.com/exercism/cli/releases/download/v3.0.13/exercism-3.0.13-linux-x86_64.tar.gz"
RUN tar -xf "exercism-3.0.13-linux-x86_64.tar.gz"
RUN mv exercism /usr/bin/
RUN rm -r /tmp/exercism
