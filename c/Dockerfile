FROM 64gag/exercism-venv-base

RUN apt-get update \
    && apt-get install -y gcc make gdb clang-format \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
