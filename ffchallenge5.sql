--create the schema and use it
create or replace schema WEEK_5;
use schema WEEK_5;


--create the simple table with one column
create or replace table table_1
(
col1 varchar
);


--insert the value 5 into the column
insert into table_1
values(5);

--check if it is there
select * from table_1;


--create the fucntion
create or replace function mltp_3(x int)
    returns int
    language python
    runtime_version = '3.8'
    handler = 'mltp_3'
as 
$$
def mltp_3(x):
    return x*3
$$;


--apply the fucntion to the value in the table
select mltp_3(select * from table_1);
