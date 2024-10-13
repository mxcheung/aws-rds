#!/bin/bash

sudo yum -y install telnet
sudo yum install postgresql15
pip install gdown
gdown https://drive.google.com/uc?id=1JohcltGTauLYngVt-BcgwfegB0uXuRXg

echo "aws rds wait db-instance-available"
WAIT_RDS_OUTPUT=$(aws rds wait db-instance-available --db-instance-identifier esg) 
RDS_ENDPOINT=$(aws rds describe-db-instances --db-instance-identifier esg --query 'DBInstances[0].Endpoint.Address' --output text)
echo $RDS_ENDPOINT
telnet $RDS_ENDPOINT 5432

# Get the secret ARN
SECRET_ARN=$(aws rds describe-db-instances --db-instance-identifier wordpress --query 'DBInstances[0].MasterUserSecret.SecretArn' --output text)
SECRET_NAME=$(aws secretsmanager describe-secret --secret-id $SECRET_ARN --query 'Name' --output text)
echo "Secret ARN: $SECRET_ARN"
echo "Secret Name: $SECRET_NAME"

export PGPASSWORD=$(aws secretsmanager get-secret-value --secret-id $SECRET_ARN --query 'SecretString' --output text | jq -r '.password')
psql -h $RDS_ENDPOINT -d postgres -U postgres -p 5432 < ESGMark_database.sql

# select * from public.api_companymodel limit 10;









