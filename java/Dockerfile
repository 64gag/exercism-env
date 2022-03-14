FROM 64gag/exercism-venv-base

RUN apt-get update \
    && apt-get install -y software-properties-common openjdk-11-jdk gradle \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
