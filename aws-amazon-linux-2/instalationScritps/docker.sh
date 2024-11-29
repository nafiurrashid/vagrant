#!/bin/bash
#Created by NR
#date: 10-03-2023 
sudo yum update -y 
sudo yum install docker -y
sudo systemctl start docker
sudo systemctl start docker
#sudo docker run -p 80:8000 -d zuheb/django_blog
