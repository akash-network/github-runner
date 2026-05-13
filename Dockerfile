FROM node:24 AS node

FROM myoung34/github-runner:ubuntu-jammy

COPY --from=node /usr/local/bin /usr/local/bin
COPY --from=node /usr/local/lib /usr/local/lib
COPY --from=node /usr/local/include /usr/local/include
COPY --from=node /usr/local/share /usr/local/share

RUN apt-get update && \
    apt-get install -y --no-install-recommends bc jq direnv && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
