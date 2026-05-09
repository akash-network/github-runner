FROM myoung34/github-runner:ubuntu-jammy

RUN apt-get update && \
    apt-get install -y --no-install-recommends ca-certificates curl gnupg bc jq direnv && \
    curl -fsSL https://deb.nodesource.com/setup_24.x | bash - && \
    apt-get install -y --no-install-recommends nodejs && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
