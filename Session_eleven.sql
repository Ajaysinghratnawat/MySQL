CREATE DATABASE REGEX;
USE REGEX;
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10,2)
); 
INSERT INTO customers (customer_id, customer_name, city) VALUES
(1, 'Alice', 'New York'),
(2, 'Bob', 'Los Angeles'),
(3, 'Charlie', 'Chicago'),
(4, 'David', 'Houston'),
(5, 'Eva', 'Phoenix'),
(6, 'Frank', 'Philadelphia'),
(7, 'Grace', 'San Antonio'),
(8, 'Henry', 'San Diego'),
(9, 'Ivy', 'Dallas'),
(10, 'Jack', 'San Jose');
INSERT INTO orders (order_id, customer_id, order_date, amount) VALUES
(101, 1, '2024-01-05', 250.00),
(102, 2, '2024-01-06', 150.00),
(103, 3, '2024-01-07', 300.00),
(104, 1, '2024-01-10', 120.00),
(105, 5, '2024-01-12', 450.00),
(106, 6, '2024-01-15', 200.00),
(107, 2, '2024-01-18', 175.00),
(108, 8, '2024-01-20', 500.00),
(109, 11, '2024-01-22', 90.00),
(110, 12, '2024-01-25', 60.00);

-- Inner join - inner(optional) ->bydefault
-- on at place of where
select c.customer_id,c.customer_name,o.customer_id,o.order_id,o.amount
from customers as c join orders as o 
where c.customer_id=o.customer_id;

select c.customer_id,c.customer_name,o.customer_id,o.order_id,o.amount
from customers as c inner join orders as o 
on c.customer_id=o.customer_id;

--  Natural join -> no need of condition(same as inner) -> same column
select c.customer_id,c.customer_name,o.customer_id,o.order_id,o.amount
from customers as c natural join orders as o;

alter table customers rename column customer_id to cid;
--  Cross/cartesian join -> no need of condition(same as inner) 
-- if same row not present then connect every alement to every element of another table
select c.cid,c.customer_name,o.customer_id,o.order_id,o.amount
from customers as c cross join orders as o;
alter table customers rename column cid to customer_id;

-- Outer join 
-- Types -> Left,Right,Full
-- Left Outer join -> left table ka data 
select c.customer_id,c.customer_name,o.customer_id,o.order_id,o.amount
from customers as c left join orders as o 
on c.customer_id=o.customer_id;

-- Right Outer join -> right table ka data 
select c.customer_id,c.customer_name,o.customer_id,o.order_id,o.amount
from customers as c right join orders as o 
on c.customer_id=o.customer_id;

-- Q. sum of amount
select sum(amount) from customers as c join orders as o 
where c.customer_id=o.customer_id;
 
 -- Q. each customer amount spend
select customer_name,sum(amount) from customers as c join orders as o
where c.customer_id=o.customer_id
group by customer_name having sum(amount)>300;


use sakila;
-- Q. find acotorid actorname & total no. of movie

select a.actor_id,a.first_name,count(fa.film_id) from actor as a join film_actor as fa 
where a.actor_id=fa.actor_id
group by actor_id;


-- super key ,candidate key
-- What is normalization
-- what is 1NF,2NF,3NF
-- (partial dependency)

-- what are outer join and self join 
