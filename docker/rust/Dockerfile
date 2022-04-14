FROM rust:1.60-slim-bullseye

RUN rustup install nightly-aarch64-unknown-linux-gnu
RUN apt-get update && \
    apt-get -y install \
      git \
      gcc-aarch64-linux-gnu \
      pkg-config \
      libssl-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
RUN rustup component add \
      rls \
      rust-analysis \
      rust-src \
      clippy
RUN rustup component add rustfmt --toolchain nightly-aarch64-unknown-linux-gnu
RUN cargo install \
      cargo-edit \
      cargo-watch
