# nextcloud-ffmpeg

Nextcloud Docker images with FFmpeg pre-installed. Built on top of the official [Nextcloud](https://hub.docker.com/_/nextcloud) images.

## Available Tags

| Tag | Base Image |
|-----|-----------|
| `30`, `30-apache`, `latest`, `apache` | `nextcloud:30-apache` |
| `30-fpm`, `fpm` | `nextcloud:30-fpm` |
| `29`, `29-apache` | `nextcloud:29-apache` |
| `29-fpm` | `nextcloud:29-fpm` |
| `28`, `28-apache` | `nextcloud:28-apache` |
| `28-fpm` | `nextcloud:28-fpm` |

## Usage

```bash
docker pull ghcr.io/alexandercleasby/nextcloud-ffmpeg:latest
```

Or in a `docker-compose.yml`:

```yaml
services:
  nextcloud:
    image: ghcr.io/alexandercleasby/nextcloud-ffmpeg:30-apache
    ports:
      - "8080:80"
```

For use with a separate web server (nginx, caddy, etc.), use the `fpm` variant:

```yaml
services:
  nextcloud:
    image: ghcr.io/alexandercleasby/nextcloud-ffmpeg:30-fpm
```

## Rebuild Schedule

Images are rebuilt weekly (Monday 04:00 UTC) to pick up security updates and patch releases from the upstream Nextcloud base images. Since the tags use major versions (e.g. `nextcloud:30-apache`), new patch releases are incorporated automatically without code changes.

## Verification

```bash
docker run --rm ghcr.io/alexandercleasby/nextcloud-ffmpeg:latest ffmpeg -version
```
