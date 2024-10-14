# esg using docker

## ec

```
t3.small or t3.medium
30 gb
```


## quick start

https://us-east-1.console.aws.amazon.com/ec2/home?region=us-east-1#LaunchInstances:
Instance Type:
   - t3.medium
Key pair (login) 
   - MyKeyPair.pem
Network settings
  - Allow SSH traffic from
  - Allow HTTPS traffic from the internet
  - Allow HTTP traffic from the internet
Configure storage
  - 30gb
```
scp -i /drives/c/max/aws/MyKeyPair.pem /drives/c/esg/parns/capstone-project-3900h18bnifflers-main-20241013T063547Z-001.zip ec2-user@ec2-54-234-111-22.compute-1.amazonaws.com:/home/ec2-user/
ssh -i "MyKeyPair.pem" ec2-user@ec2-54-234-111-22.compute-1.amazonaws.com
sudo yum -y install git
git clone https://github.com/mxcheung/aws-rds.git
cd /home/ec2-user/aws-rds/ec2-esg/
. ./set_up.sh

```

```
sudo docker network create my_network
sudo docker-compose up --build -d
```

```
sudo yum -y install git
git clone https://github.com/mxcheung/aws-rds.git
cd /home/ec2-user/aws-rds/ec2-esg/
. ./set_up.sh

```

```
export PGPASSWORD=postgres
psql -U postgres postgres -h localhost < ESGMark_database.sql

```



```
Last login: Mon Oct 14 11:37:19 2024 from 49.176.90.31
[ec2-user@ip-172-31-16-216 ~]$ df
Filesystem       1K-blocks    Used Available Use% Mounted on
devtmpfs              4096       0      4096   0% /dev
tmpfs               973544       0    973544   0% /dev/shm
tmpfs               389420     812    388608   1% /run
/dev/nvme0n1p1    31379436 9559964  21819472  31% /
tmpfs               973544       0    973544   0% /tmp
/dev/nvme0n1p128     10202    1310      8892  13% /boot/efi
tmpfs               194708       0    194708   0% /run/user/1000
```

