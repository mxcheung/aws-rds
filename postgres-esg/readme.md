# Postgres ESG

## Objectives
- install Postgres via RDS
- secrets manager to store postgres password
- install PSql client (cloud 9)
- install telnet (cloud 9)
- download sql file from google drive (cloud 9)

```
postgres=> select * from public.api_companymodel limit 10;
              company_name               |  perm_id   | industry_id | ticker | switch 
-----------------------------------------+------------+-------------+--------+--------
 Shandong Kehui Power Automation Co Ltd  | 5035738159 |          65 | 688681 | t
 Tonix Pharmaceuticals Holding Corp      | 4297915579 |          42 | TNXP   | t
 Kiran Print Pack Ltd                    | 4296052980 |          73 | KRP    | f
 hhgregg Inc                             | 4295900010 |          17 | HGGGQ  | f
 American Electric Power Company Inc     | 4295903333 |          48 | AEP    | t
 Saudi Basic Industries Corporation SJSC | 4295887293 |             |        | t
 Rounderway PLC                          | 5057771033 |             |        | t
 Triumph Group Inc                       | 4295905135 |          62 | TGI    | t
 First Solar Inc                         | 4295910005 |          60 | FSLR   | t
 Etihad Etisalat Company SJSC            | 4295887317 |             |        | t
(10 rows)
```

## step by step

Using cloud shell
```

response=$(aws iam create-access-key --output json)

# Write the response to a JSON file
echo "$response" > access-key-response.json

# Extract AccessKeyId and SecretAccessKey from the response file
access_key_id=$(jq -r '.AccessKey.AccessKeyId' access-key-response.json)
secret_access_key=$(jq -r '.AccessKey.SecretAccessKey' access-key-response.json)

# Print the extracted values (optional)
echo "AccessKeyId: $access_key_id"
echo "SecretAccessKey: $secret_access_key"
```


Using cloud 9
```
export aws_access_key_id=AKIAVTSSZZZZZZZZZZZZZZ
export aws_secret_access_key=HqQCiMHHxCZZZZZZZZZZZZZZZZZ
git clone https://github.com/mxcheung/aws-rds.git
cd /home/ec2-user/environment/aws-rds/postgres-esg/user_credentials/
. ./set_up.sh
cd /home/ec2-user/environment/aws-rds/postgres-esg/rds/
. ./set_up.sh
cd /home/ec2-user/environment/aws-rds/postgres-esg/ec2/
. ./set_up.sh
cd /home/ec2-user/environment/aws-rds/postgres-esg/cloud_9/
. ./set_up.sh

```

To test postgres
```
psql -h $RDS_ENDPOINT -d postgres -U postgres -p 5432 
select * from public.api_companymodel limit 10;
```


Using ec2
```
export aws_access_key_id=AKIAVTSSZZZZZZZZZZZZZZ
export aws_secret_access_key=HqQCiMHHxCZZZZZZZZZZZZZZZZZ
sudo yum -y install git
git clone https://github.com/mxcheung/aws-rds.git
cd /home/ec2-user/aws-rds/postgres-esg/user_credentials/
. ./set_up.sh
cd /home/ec2-user/aws-rds/postgres-esg/ec2-app/
. ./set_up.sh

```

## Using browser

```
in ec2 instance:
   - Nginx enabled
   - security group allows http traffic
```
input: http://3.86.146.xxx/
expected output
```
Welcome to nginx!
If you see this page, the nginx web server is successfully installed and working. Further configuration is required.
```
