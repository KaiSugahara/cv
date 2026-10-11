FROM debian:bookworm-slim

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        ca-certificates \
        curl \
        git \
        make \
        openssh-client \
        python3 \
        ripgrep \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

CMD ["bash"]
