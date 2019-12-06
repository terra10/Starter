# Pull base image.
FROM ghost:3.1.0

COPY ./ghost_theme /var/lib/ghost/content/themes/terra10
COPY ./ghost_routes/routes.yaml /var/lib/ghost/content/settings/routes.yaml
# COPY ./ghost_s3storage/node_modules/ghost-storage-adapter-s3 /var/lib/ghost/content/adapters/storage/s3

