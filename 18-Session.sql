-- Constraints create, insert, not null,default
-- Constraints are rules that apply on table so that not allow
-- to insert the invalid data entry
-- It is use to maintain data accuracy and consistency
-- If the data is invalid so the complete operation will be aborded

-- DDL statement(data defination language)
-- create,drop,alter,truncate
-- create
use regex;
create table test1(sno int); 
describe test1;

-- DML (Data Manipulation language)
-- insert,update,merge,delete
-- insert
insert into test1 values(10);
select * from test1;
insert into test1(sno) values(20),(null),(30);
select count(sno),count(*) from test1;

-- constraints
-- not null(set value cant be null)
select * from test2;
create table test2(sno int not null,salary int);
insert into test2(sno,salary) values(20,1000);
insert into test2(sno,salary) values(10,null);
insert into test2(sno,salary) values(null,1000);-- bcz of constraint

-- default(set default value to set by default value if we not insert any)
select * from test3;
create table test3(sno int not null default 80,salary int);
insert into test3(salary) values(1000);

-- unique(make sure all values are different/unique in column)
-- but multiple null values allowed thats why it is different from primary key
select * from test4;
create table test4(sno int not null,salary int unique default 100);
insert into test4(sno,salary) values(1000,2000);
insert into test4(sno) values(1001);
insert into test4(sno) values(1002);-- error because default value already present

-- Check(conditions)
select * from test5;
create table test5(sno int,salary int,
check(sno between 1 and 100),check(salary in(1000,2000)));
insert into test5(sno,salary) values(4,1000);

-- give name so error read easily
create table test6(sno int,salary int,
check(sno between 1 and 100),
constraint regex_test6_salary_chk check(salary in(1000,2000)));
insert into test6(sno,salary) values(4,1000);

-- Q.table employee id will be primary Key ,name,email with unique ,college default
-- age condition >18 and the guardian should be a pallindrome
create table test7(
id int primary Key,
name varchar(20),
email varchar(20) unique,
college varchar(20) default "Aietm",
age int ,
guardian varchar(20),
 check(guardian=reverse(guardian)),
check(age>18)
);
insert into test7(id,name,email,college,age,guardian)
values(1,"Ajay","ajay","Aietm",21,"bob");
select * from test7;
