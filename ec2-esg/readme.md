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
scp -i /drives/c/max/aws/MyKeyPair.pem /drives/c/esg/parns/cd /home/ec2-user/capstone-project-3900h18bnifflers-main.zip ec2-user@ec2-54-234-111-22.compute-1.amazonaws.com:/home/ec2-user/
ssh -i "MyKeyPair.pem" ec2-user@ec2-54-234-111-22.compute-1.amazonaws.com
sudo yum -y install git
git clone https://github.com/mxcheung/aws-rds.git
cd /home/ec2-user/aws-rds/ec2-esg/
. ./set_up.sh

```

[ec2-54-235-53-79.compute-1.amazonaws.com](http://ec2-54-235-53-79.compute-1.amazonaws.com/register)

Security and Commodity Exchanges

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


```
top - 19:39:22 up 7 min,  2 users,  load average: 1.70, 1.27, 0.64
Tasks: 153 total,   1 running, 152 sleeping,   0 stopped,   0 zombie
%Cpu(s):  0.7 us,  0.7 sy,  0.0 ni, 98.2 id,  0.0 wa,  0.0 hi,  0.0 si,  0.5 st
MiB Mem :   3827.7 total,    249.6 free,   1046.5 used,   2531.6 buff/cache
MiB Swap:      0.0 total,      0.0 free,      0.0 used.   2455.7 avail Mem

    PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND
  27881 root      20   0  172788  80392  16312 S   1.7   2.1   0:03.83 python3
  19265 root      20   0 1819260  26644  11732 S   0.3   0.7   0:00.41 containerd
  27814 root      20   0   31.5g  82932  45460 S   0.3   2.1   0:01.75 node
      1 root      20   0  171696  16276   8992 S   0.0   0.4   0:01.68 systemd
      2 root      20   0       0      0      0 S   0.0   0.0   0:00.00 kthreadd
      3 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 rcu_gp
      4 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 rcu_par_gp
      5 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 slub_flushwq
      6 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 netns
      8 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker/0:0H-events_highpri
      9 root      20   0       0      0      0 I   0.0   0.0   0:00.16 kworker/u4:0-flush-259:0
     10 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 mm_percpu_wq
     11 root      20   0       0      0      0 I   0.0   0.0   0:00.00 rcu_tasks_kthread
     12 root      20   0       0      0      0 I   0.0   0.0   0:00.00 rcu_tasks_rude_kthread
```

