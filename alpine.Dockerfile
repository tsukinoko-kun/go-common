FROM golang:1-alpine
LABEL org.opencontainers.image.description "Latest Go based on Alpine with templ + sqlc installed"
RUN go install github.com/a-h/templ/cmd/templ@latest && \
    go install github.com/sqlc-dev/sqlc/cmd/sqlc@latest
