FROM golang:latest
LABEL org.opencontainers.image.description "Latest Go with templ + sqlc installed"
RUN go install github.com/a-h/templ/cmd/templ@latest && \
    go install github.com/sqlc-dev/sqlc/cmd/sqlc@latest
