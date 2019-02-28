cd ./deploy

#download latest deploy script
aws s3 cp "s3://flipp-platform-production/deploy/serverless/platform-function-deploy.sh" platform-function-deploy.sh
chmod +x platform-function-deploy.sh

#Execute the deployment Scripts
./platform-function-deploy.sh