# ec2 app setup

quick start
```
ssh -i "MyKeyPair.pem" ec2-user@ec2-3-86-xxx-xxx.compute-1.amazonaws.com
sudo yum -y install git
export aws_access_key_id=AKIAVTSSZZZZZZZZZZZZZZ
export aws_secret_access_key=HqQCiMHHxCZZZZZZZZZZZZZZZZZ
git clone https://github.com/mxcheung/aws-rds.git
cd /home/ec2-user/aws-rds/postgres-esg/user_credentials/
. ./set_up.sh
```

```
install nginx
install python3
```

