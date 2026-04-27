FROM myoung34/github-runner:ubuntu-jammy

RUN apt-get update && \
    apt-get install -y --no-install-recommends npm bc jq && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
