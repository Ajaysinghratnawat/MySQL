-- Foreign Key
use regex;
drop table test9;
drop table test10;

create table test9(cid int primary Key,cname varchar(20));
insert into test9 values(10,'aman'),(11,'subham');

create table test10(oid int primary key,city varchar(20),cid int,
 foreign key(cid) references test9(cid));
insert into test10 values(1009,'jaipur',10),(1010,'goa',11),(1011,'J&K',10);

