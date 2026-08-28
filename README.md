# renovate-defaults
renovate default configuration shared across multiple projects

## Usage

In your repository's `.github/renovate.jsonc`:

```json
{
  "$schema": "https://docs.renovatebot.com/renovate-schema.json",
  "extends": ["github>matthiasbalke/renovate-defaults:default.jsonc"]
}
```

## Custom Managers

### Alpine APK

#### Alpine 3.23

```dockerfile
FROM alpine:3.23.5

# renovate: alpine: datasource=custom.alpine_3_23 packageName=curl
ARG CURL_VERSION=8.20.0-r0

RUN apk add --no-cache \
    curl="${CURL_VERSION}"
```

#### Alpine 3.24

```dockerfile
FROM alpine:3.24.1

# renovate: alpine: datasource=custom.alpine_3_24 packageName=curl
ARG CURL_VERSION=8.21.0-r0

RUN apk add --no-cache \
    curl="${CURL_VERSION}"
```

### Docker Hardened System Images: Alpine APK

#### Alpine 3.23

```dockerfile
FROM dhi.io/3.23-alpine3.23-dev

# renovate: dhi_alpine: datasource=custom.dhi_alpine_3_23 packageName=curl
ARG CURL_VERSION=8.21.0-r0

RUN apk add --no-cache \
    curl="${CURL_VERSION}"
```

#### Alpine 3.24
```dockerfile
FROM dhi.io/3.24-alpine3.24-dev

# renovate: dhi_alpine: datasource=custom.dhi_alpine_3_24 packageName=curl
ARG CURL_VERSION=8.21.0-r0

RUN apk add --no-cache \
    curl="${CURL_VERSION}"
```

## Validation

```bash
bun run validate
```

Or use the shell wrapper:

```bash
./validate.sh
```
