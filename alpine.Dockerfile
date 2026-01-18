FROM golang:1-alpine
LABEL org.opencontainers.image.description "Latest Go based on Alpine with templ, sqlc, protobuf, grpc, just, zig, node.js, pnpm"

ENV CI=true
ENV CGO_ENABLED=1
ENV CC="zig cc"
ENV CXX="zig c++"

RUN apk add protobuf-dev just zig nodejs npm && \
    npm install -g pnpm && \
    go install github.com/a-h/templ/cmd/templ@latest && \
    go install github.com/sqlc-dev/sqlc/cmd/sqlc@latest && \
    go install google.golang.org/protobuf/cmd/protoc-gen-go@latest && \
    go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
