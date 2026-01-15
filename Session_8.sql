use sakila;
select count(*) from payment where amount=2.99; 
select amount,count(*) from payment group by amount;
select customer_id,sum(amount) from payment where amount>3 group by customer_id;
select customer_id,count(amount) from payment
where month(payment_date)=5 group by customer_id;

-- order by sort in increasing order
-- desc decreasing order
select * from payment order by customer_id,amount desc;
 
