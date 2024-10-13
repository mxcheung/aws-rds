# ec2 app setup

ssh -i "MyKeyPair.pem" ec2-user@ec2-3-86-xxx-xxx.compute-1.amazonaws.com


```
install nginx
install python3
```


#!/bin/bash


# Assign the VPC ID to a variable
VPC_ID=$(aws ec2 describe-vpcs --query "Vpcs[?Tags[?Key=='Name' && Value=='Your Custom VPC']].{VpcId:VpcId}" --output text)



