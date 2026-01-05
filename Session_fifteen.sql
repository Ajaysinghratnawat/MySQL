use sakila;
-- Sub query
-- Sub query is a query within another query
-- It is also called inner query

-- Where it is used
-- Sub query is used to access data based on conditions
-- Sub query is to filter data for outer query
-- Outer(inner/Nested)
-- It is used to filter or apply calculation based on dynamic condition
-- Ex:- Select * from table where age=(Inner query);
select * from payment;

select amount from payment where payment_id=5;
-- () => nested query
select * from payment where amount =(select amount from payment where payment_id=5);

-- get the payment id and amount where amount is not equal to amount of payment_id 23
select * from payment;
select amount from payment where payment_id=23;
select payment_id,amount from payment where payment_id!=(select amount from payment where payment_id=23);

-- get the payment_id ,customer_id,amount,date where the month of
--  payment should be same as of payment_id 6
select month(payment_date) from payment where payment_id=6;

select payment_id,customer_id,payment_date,amount from payment
where month(payment_date)=(select month(payment_date) 
from payment where payment_id=6);

-- get all colum from payment table where the staff serving 
-- the customer should be same payment_id 7
select staff_id from payment where payment_id=7;
select * from payment where staff_id=(select staff_id from payment where payment_id=7);

-- get all the payment information where the amount is same as
-- of highest amount of payment table
select max(amount) from payment;
select * from payment where amount=(select max(amount) from payment);

-- get the amount and total number of payment done for each amount only 
-- for those payment whose amount less than the amount of rental_id 1725
select amount from payment where rental_id=1725;
select amount,count(payment_id) from payment where 
amount<(select amount from payment where rental_id=1725) group by amount;

-- Single row subquery(nested query => return 1 row only)

-- get the month and total amount spend only for those customer
-- whose month of payment is greater than customer_id 1 and payment_id 3
select month(payment_date) from payment where customer_id=1 and payment_id=3;
select month(payment_date),sum(amount) from payment where
month(payment_date)>
(select month(payment_date) from payment where customer_id=1 and payment_id=3) 
group by month(payment_date);

-- Assignment 
-- multi row sub query
-- in any all operator