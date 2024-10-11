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
