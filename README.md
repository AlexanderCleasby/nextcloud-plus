# nextcloud-ffmpeg

Nextcloud Docker images with FFmpeg pre-installed. Built on top of the official [Nextcloud](https://hub.docker.com/_/nextcloud) images.

## Available Tags

| Tag | Base Image |
|-----|-----------|
| `32`, `32-apache`, `latest`, `apache` | `nextcloud:32-apache` |
| `32-fpm`, `fpm` | `nextcloud:32-fpm` |
| `31`, `31-apache` | `nextcloud:31-apache` |
| `31-fpm` | `nextcloud:31-fpm` |
| `30`, `30-apache` | `nextcloud:30-apache` |
| `30-fpm` | `nextcloud:30-fpm` |

## Usage

```bash
docker pull ghcr.io/alexandercleasby/nextcloud-ffmpeg:latest
```

Or in a `docker-compose.yml`:

```yaml
services:
  nextcloud:
    image: ghcr.io/alexandercleasby/nextcloud-ffmpeg:32-apache
    ports:
      - "8080:80"
```

For use with a separate web server (nginx, caddy, etc.), use the `fpm` variant:

```yaml
services:
  nextcloud:
    image: ghcr.io/alexandercleasby/nextcloud-ffmpeg:32-fpm
```

## Rebuild Schedule

Images are rebuilt weekly (Monday 04:00 UTC) to pick up security updates and patch releases from the upstream Nextcloud base images. Since the tags use major versions (e.g. `nextcloud:32-apache`), new patch releases are incorporated automatically without code changes.

## Verification

```bash
docker run --rm ghcr.io/alexandercleasby/nextcloud-ffmpeg:latest ffmpeg -version
```
