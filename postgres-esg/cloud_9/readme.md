
```
sudo yum install postgresql15
sudo yum -y install telnet
```
Download sql file from google drive
```
pip install gdown
gdown https://drive.google.com/uc?id=1JohcltGTaxxxxxxxxxxxxxxxxxx
```

```
export PGPASSWORD='J0aC~cW}xxxxxxxxxxxxx'
export RDS_ENDPOINT=esg.cjsgxxxxxxxxxxxxxx.us-east-1.rds.amazonaws.com
psql -h $RDS_ENDPOINT -d postgres -U postgres -p 5432 < ESGMark_database.sql
select * from public.api_companymodel limit 10;
```
