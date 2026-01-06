-- multi row subquery -> it gives multiple row so we 
-- cant use comparison operator directly
-- multi row sub query -> return multiple row
-- so we use not in,in,any,all in multi row subquery
use sakila;
-- in,not in
select * from payment where amount in 
(select amount from payment where payment_id=3 or payment_id=2);

-- any -> we can use comparison operator with any 
-- any -> only need one comparison will have to true
select * from payment where amount =any
(select amount from payment where payment_id=3 or payment_id=2);

-- all -> we can use comparison operator with all
-- all -> need all comparison will have to true
select * from payment where amount >all
(select amount from payment where payment_id=3 or payment_id=2);

-- Q1. get all the payment information where the month of payment
-- should be same as payment_id 2,3
select month(payment_date) from payment where payment_id=2 or payment_id=3;
select * from payment where month(payment_date) =any 
(select month(payment_date) from payment where payment_id=2 or payment_id=3);

-- Q2. get all the payment information whose amount is larger than 
-- among all amount of payment id 2-8
select amount from payment where amount between 2 and 8;
select * from payment where amount >all 
(select amount from payment where amount between 2 and 8);

-- Assignment
-- 1. what are corelated subquery and how they are executed
-- 2. what are constraint in sql