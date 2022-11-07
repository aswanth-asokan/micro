#!/bin/bash
echo "==>Copying env from S3"
if [ "$DEPLOYMENT_GROUP_NAME" == "micro" ]
then
 aws s3 cp s3://live-cloudfronttos3s3bucket9ce6ab04-1jt1injrl722u/env-dev/auth/env /var/www/micro-service/auth/.env
 aws s3 cp s3://live-cloudfronttos3s3bucket9ce6ab04-1jt1injrl722u/env-dev/gateway/env /var/www/micro-service/gateway/.env
 
elif [ "$DEPLOYMENT_GROUP_NAME" == "stage-fr-api" ]
then
  aws s3 cp s3://freightrunner-configs/env-stage/env /var/www/freightrunner-api/.env
elif [ "$DEPLOYMENT_GROUP_NAME" == "prod-fr-api" ]
then
 aws s3 cp s3://freightrunner-configs/env-prod/env /var/www/freightrunner-api/.env
fi 