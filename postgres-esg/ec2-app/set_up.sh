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
