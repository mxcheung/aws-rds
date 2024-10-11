install telnet client for connectivity test
```
sudo yum -y install telnet
export RDS_ENDPOINT=esg.cjsgxxxxxxxxxxxxxx.us-east-1.rds.amazonaws.com
telnet $RDS_ENDPOINT 5432
```
Download sql file from google drive
```
pip install gdown
gdown https://drive.google.com/uc?id=1JohcltGTaxxxxxxxxxxxxxxxxxx
```

install postgres client 
```
sudo yum install postgresql15
export PGPASSWORD='J0aC~cW}xxxxxxxxxxxxx'
export RDS_ENDPOINT=esg.cjsgxxxxxxxxxxxxxx.us-east-1.rds.amazonaws.com
psql -h $RDS_ENDPOINT -d postgres -U postgres -p 5432 < ESGMark_database.sql
select * from public.api_companymodel limit 10;
```
