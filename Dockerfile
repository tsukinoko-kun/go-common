FROM golang:1
LABEL org.opencontainers.image.description "Latest Go with templ, sqlc, protobuf, grpc, just, zig"

ENV CGO_ENABLED=1
ENV CC="zig cc"
ENV CXX="zig c++"

RUN apt-get update && apt-get install -y --no-install-recommends protobuf-compiler just xz-utils && \
    rm -rf /var/lib/apt/lists/* && \
    ARCH=$(uname -m) && \
    curl -L https://ziglang.org/download/0.13.0/zig-linux-${ARCH}-0.13.0.tar.xz | tar -xJ -C /usr/local && \
    ln -s /usr/local/zig-linux-${ARCH}-0.13.0/zig /usr/local/bin/zig && \
    go install github.com/a-h/templ/cmd/templ@latest && \
    go install github.com/sqlc-dev/sqlc/cmd/sqlc@latest && \
    go install google.golang.org/protobuf/cmd/protoc-gen-go@latest && \
    go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
