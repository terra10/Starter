# TERRA10 online

## Dockerfile
$(aws ecr get-login --no-include-email --region eu-west-1)
docker build -t ghostt10 .
docker tag ghostt10:latest xxxxxx.dkr.ecr.eu-west-1.amazonaws.com/ghostt10:latest

## ghost_theme
Holds the custom Ghost CMS theme

## ghost_routes
Holds the custom Ghost CMS routes

