#!/bin/bash
cd /var/www/micro-service/
sudo pm2 start auth/index.js --name "auth"
sudo pm2 start gateway/index.js --name "gateway"
#sudo pm2 start user/src/index.js --name "user"
#sudo pm2 start video/src/index.js --name "video"