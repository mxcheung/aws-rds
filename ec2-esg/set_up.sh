#!/bin/bash


sudo yum update -y
sudo yum -y install python3-pip python3-devel nginx git

sudo yum install -y postgresql15

pip install gdown

# gdown https://drive.google.com/uc?id=1JohcltGTazzzzzzzzzzzzzzzzzz


export PGPASSWORD=postgres
psql -U postgres postgres -h localhost < ESGMark_database.sql
