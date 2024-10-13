#!/bin/bash

AWS_ACCOUNT_ID=$(aws sts get-caller-identity --query 'Account' --output text)

# Assign the VPC ID to a variable
VPC_ID=$(aws ec2 describe-vpcs --query "Vpcs[?Tags[?Key=='Name' && Value=='Your Custom VPC']].{VpcId:VpcId}" --output text)

# Get Subnet ID for Public Subnet AZ A
public_subnet_a=$(aws ec2 describe-subnets \
    --filters "Name=tag:Name,Values=Public Subnet AZ A" "Name=availability-zone,Values=us-east-1a" \
    --query "Subnets[0].SubnetId" --output text)

aws ec2 create-key-pair --key-name MyKeyPair --query 'KeyMaterial' --output text > MyKeyPair.pem

EC2_SECURITY_GROUP_ID=$(aws ec2 create-security-group \
    --group-name ec2-sg \
    --description "Security group for EC2 instance" \
    --vpc-id "$VPC_ID" \
    --query "GroupId" \
    --output text)

EC2_RUN_OUTPUT=$(aws ec2 run-instances \
    --image-id ami-0fff1b9a61dec8a5f \
    --count 1 \
    --instance-type t3.small \
    --key-name MyKeyPair \
    --security-group-ids $EC2_SECURITY_GROUP_ID \
    --subnet-id $public_subnet_a \
    --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=MyInstance}]')

    
