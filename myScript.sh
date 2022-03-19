#! /bin/bash

sudo apt-get update -y
sudo apt-get install wget -y
sudo apt-get install ruby -y
sudo apt install ruby-full -y
sudo wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install
sudo chmod +x ./install
sudo ./install auto > /tmp/logfile
sudo service codedeploy-agent status


