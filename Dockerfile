FROM myoung34/github-runner:ubuntu-jammy

ARG GO_VERSION=1.26.2

RUN apt-get update && \
    apt-get install -y --no-install-recommends npm bc jq direnv && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN ARCH=$(dpkg --print-architecture) && \
    curl -fsSL "https://go.dev/dl/go${GO_VERSION}.linux-${ARCH}.tar.gz" | tar -C /usr/local -xz

ENV PATH="/usr/local/go/bin:${PATH}"
