#!/bin/bash


# Assign the VPC ID to a variable
VPC_ID=$(aws ec2 describe-vpcs --query "Vpcs[?Tags[?Key=='Name' && Value=='Your Custom VPC']].{VpcId:VpcId}" --output text)

sudo yum update -y
sudo yum -y install python3-pip python3-devel nginx git

# Install Gunicorn to serve the Django application.
pip3 install gunicorn

# Install Django using pip3 and create your Django project.
pip3 install django


cd /home/ec2-user
django-admin startproject myproject
cd myproject

# Start and enable Nginx:
sudo systemctl start nginx
sudo systemctl enable nginx

# Set up Gunicorn to run as a service on Amazon Linux. Create a systemd service file:
sudo cp /home/ec2-user/aws-rds/postgres-esg/ec2-app/etc/systemd/system/gunicorn.service  /etc/systemd/system/

# Enable and start Gunicorn:
sudo systemctl start gunicorn
sudo systemctl enable gunicorn

