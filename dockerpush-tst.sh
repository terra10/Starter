export AWS_PROFILE=t10-website
$(aws ecr get-login --no-include-email --region eu-west-1)
docker build -t ghostt10-tst .
docker tag ghostt10-tst:latest 369133964244.dkr.ecr.eu-west-1.amazonaws.com/ghostt10-tst:latest
docker push 369133964244.dkr.ecr.eu-west-1.amazonaws.com/ghostt10-tst:latest
