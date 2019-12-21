export AWS_PROFILE=t10-website
$(aws ecr get-login --no-include-email --region eu-west-1)
docker build -t ghostt10 .
docker tag ghostt10:latest 369133964244.dkr.ecr.eu-west-1.amazonaws.com/ghostt10:latest
docker push 369133964244.dkr.ecr.eu-west-1.amazonaws.com/ghostt10:latest