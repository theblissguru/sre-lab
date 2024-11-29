#!/bin/bash
# Install Node.js
sudo apt-get update -y
sudo apt-get install npm -y

# Clone and start sample app
git clone https://github.com/heroku/node-js-sample.git /home/ubuntu/app
cd /home/ubuntu/app
npm install
nohup npm start > /dev/null 2>&1 &

