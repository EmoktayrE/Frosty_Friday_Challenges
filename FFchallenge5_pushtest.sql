{\rtf1\ansi\ansicpg1252\cocoartf2639
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww19200\viewh12860\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 --create the schema and use it\
create or replace schema WEEK_5;\
use schema WEEK_5;\
\
\
--create the simple table with one column\
create or replace table table_1\
(\
col1 varchar\
);\
\
\
--insert the value 5 into the column\
insert into table_1\
values(5);\
\
--check if it is there\
select * from table_1;\
\
\
--create the fucntion\
create or replace function mltp_3(x int)\
    returns int\
    language python\
    runtime_version = '3.8'\
    handler = 'mltp_3'\
as \
$$\
def mltp_3(x):\
    return x*3\
$$;\
\
\
--apply the fucntion to the value in the table\
select mltp_3(select * from table_1);}