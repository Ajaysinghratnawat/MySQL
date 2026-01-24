-- TCL
-- Transaction control language
-- Transaction -> Set of logical statement (permanent nhi hai)
use regex;
create table actor_cp2 as select actor_id,first_name from sakila.actor
where actor_id between 1 and 5;

select * from actor_cp2;
set @@autocommit=0;
select @@autocommit;
insert into actor_cp2 value(9,"Mohit");
commit;-- save data in the database
rollback;-- if autocommit is off then rollback delete recent transaction
set @@autocommit=1;

-- if autocommit is off it means data not save in database 
-- you cant see data in another connection

-- 1. In case if you run any dml operation or you write down start operation(start transaction)
-- 2. TCL use like commit and rollback (close transaction) 
-- 3. In case of run any ddl/dcl operation (clase transaction)

start transaction;
savepoint db_actor_cp2_chk1; -- rollback to this point not to start
rollback to db_actor_cp2_chk1;