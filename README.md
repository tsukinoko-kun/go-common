# Go + common tools

Docker images with Go and common development tools pre-installed.

## Included Tools

- [templ](https://templ.guide)
- [sqlc](https://sqlc.dev)
- [protobuf](https://protobuf.dev)
- [just](https://just.systems)

## Docker Images

### Debian-based (default)
- **Tags**: `latest`, `1`
- **Base**: `golang:1`
- **Platforms**: `windows/amd64`, `linux/amd64`, `linux/arm64/v8`

### Alpine-based
- **Tags**: `alpine`, `1-alpine`
- **Base**: `golang:1-alpine`
- **Platforms**: `linux/amd64`, `linux/arm64/v8`

## Usage

```bash
# Use the latest Debian-based image
docker pull ghcr.io/tsukinoko-kun/go-common:latest

# Use the Alpine-based image
docker pull ghcr.io/tsukinoko-kun/go-common:alpine
```
