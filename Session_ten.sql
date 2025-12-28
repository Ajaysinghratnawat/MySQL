use sakila;
select * from actor;-- actor_id pk
select * from film_actor;-- actor_id fk
 
select a.first_name,a.actor_id 
from actor as a join film_actor as fa
where a.actor_id=fa.actor_id;

-- composite means pk by taking multiple column to make pk
select * from film;-- fil_id pk
select * from film_actor;-- actor_id fk

select fa.film_id ,fa.actor_id,f.film_id,f.title
from film_actor as fa join film as f 
where fa.film_id=f.film_id;


-- Join 3 table
select * from actor;
select * from film_actor;
select * from film;
select a.first_name,a.last_name,f.title from actor
as a join film_actor as fa join film as f
where a.actor_id=fa.actor_id and fa.film_id=f.film_id;


-- Q. What are inner join
-- what are outer join
-- types of outer join
