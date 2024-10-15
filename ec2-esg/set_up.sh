#!/bin/bash

sudo yum update -y 

sudo amazon-linux-extras install docker 

sudo yum install docker -y

sudo service docker start 

sudo usermod -a -G docker ec2-user 

sudo yum -y install python3-pip python3-devel nginx git

sudo yum install -y postgresql15

pip install gdown

# gdown https://drive.google.com/uc?id=1JohcltGTazzzzzzzzzzzzzzzzzz

sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

docker-compose version

cd /home/ec2-user/
unzip capstone-project-3900h18bnifflers-main-20241013T063547Z-001.zip
cd /home/ec2-user//home/ec2-user/capstone-project-3900h18bnifflers-main-20241013T063547Z-001/
touch .env

sudo docker network create my_network
sudo docker-compose up --build -d

echo "load data into postgres"
cd /home/ec2-user//home/ec2-user/capstone-project-3900h18bnifflers-main-20241013T063547Z-001/
. ./data_load.sh


# cd /home/ec2-user/
# export PGPASSWORD=postgres
# psql -U postgres postgres -h localhost < ESGMark_database.sql
