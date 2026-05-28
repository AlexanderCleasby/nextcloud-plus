ARG BASE_TAG=32-apache
FROM nextcloud:${BASE_TAG}

RUN set -ex; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
        ffmpeg \
    ; \
    rm -rf /var/lib/apt/lists/*
