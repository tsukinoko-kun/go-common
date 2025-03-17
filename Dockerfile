FROM golang:1-alpine
LABEL org.opencontainers.image.description "Latest Go based on Alpine with templ, sqlc, protobuf"
RUN apk add protobuf-dev && \
    go install github.com/a-h/templ/cmd/templ@latest && \
    go install github.com/sqlc-dev/sqlc/cmd/sqlc@latest && \
    go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
