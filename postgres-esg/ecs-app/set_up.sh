#!/bin/bash


# Assign the VPC ID to a variable
VPC_ID=$(aws ec2 describe-vpcs --query "Vpcs[?Tags[?Key=='Name' && Value=='Your Custom VPC']].{VpcId:VpcId}" --output text)

sudo yum -y install git

export aws_access_key_id=AKIAVTSSZZZZZZZZZZZZZZ
export aws_secret_access_key=HqQCiMHHxCZZZZZZZZZZZZZZZZZ
git clone https://github.com/mxcheung/aws-rds.git
cd /home/ec2-user/aws-rds/postgres-esg/user_credentials/
. ./set_up.sh

