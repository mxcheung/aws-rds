esg using docker

```
Last login: Mon Oct 14 11:37:19 2024 from 49.176.90.31
[ec2-user@ip-172-31-16-216 ~]$ df
Filesystem       1K-blocks    Used Available Use% Mounted on
devtmpfs              4096       0      4096   0% /dev
tmpfs               973544       0    973544   0% /dev/shm
tmpfs               389420     404    389016   1% /run
/dev/nvme0n1p1     8310764 8310528       236 100% /
tmpfs               973544       0    973544   0% /tmp
/dev/nvme0n1p128     10202    1310      8892  13% /boot/efi
tmpfs               194708       0    194708   0% /run/user/1000
```


```
sudo docker-compose up --build -d
```

```
sudo yum -y install git
git clone https://github.com/mxcheung/aws-rds.git
cd /home/ec2-user/aws-rds/ec2-esg/
. ./set_up.sh

```
export PGPASSWORD=postgres
psql -U postgres postgres -h localhost < ESGMark_database.sql

```

```
