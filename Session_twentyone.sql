-- dml,ddl command complete
-- delete ,truncate ,update ,create ,drop ,alter 
use regex;
drop table test1;
create table actor_cp as select first_name as frame ,last_name as last from sakila.actor;

update actor_cp set last="goyal" where frame="NICK";

truncate actor_cp;

-- drop vs delete vs truncate
-- window fxn use to apply aggregate fxn on a particular window
-- window fxn is use to perform the calculation on the set of rows
-- with reference to current row
-- there are majorly 3 part 
-- 1. over -> apply a fxn over a window
-- 2. partition by -> same as group which divide into group
-- 3. order by
use world;
select code,Name,population from country;

select sum(population) from country;
select code,Name,population,(select sum(population) from country) from country;

select code,Name,population,sum(population) over() from country;
select code,Name,population,sum(population) over(partition by continent) from country;

-- find out running sum/cumulative sum -> data jaise jaise aa raha hai
-- use order by

select code,name,continent,population,sum(population) over(order by population)
from country;

