# Pull base image.
FROM ghost:3.15.2

WORKDIR /var/lib/ghost

COPY ./ghost_theme /var/lib/ghost/content/themes/terra10
COPY ./ghost_config/routes.yaml /var/lib/ghost/content/settings/routes.yaml
COPY ./ghost_config/redirects.json /var/lib/ghost/content/data/redirects.json

RUN npm install -g ghost-storage-adapter-s3@2.8.0 && \
    ln -s /usr/local/lib/node_modules/ghost-storage-adapter-s3 ./current/core/server/adapters/storage/s3
