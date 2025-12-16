use world;
Select database();

-- get the name continent and region from the country table where the continent is not same as europe
select name, continent, region from country where continent<>'Europe';

-- get the country name, continent and region where the second letter of a region is 'a' where in the continent the last third character is 'i'.
select name, continent, region from country where Region like '_a%' && continent like '%i__';

-- get the name, continent and region where the continent name should be of 5 character.
Select name, continent, region from country where continent like '_____%';

-- get the name continent and region where the continent second letter should be 'c' and second last character is 'i'.
Select name, continent, region from country where continent like '_c%i_';

-- get name continent and region where two 'a' should be there seprated with a character.
Select name, continent, region from country where;

-- operatior in sql 
-- and, or
-- cond1 and cond2 -> both should be correct
-- con1 or cond2 -> one of them should be correct
-- eg. continent in (Asis, Africa)
select name, continent from country where continent='Asia' or continent='Africa';-- 'and' cannot be written for same column

-- either continent - Africa or region - middle east
select * from country where continent ='Africa' or region = 'Middle East';

select * from country where continent ='Africa' or indepyear=1901;

select * from country where continent ='Africa' and indepyear=1962;

-- 12 question solved in -> https://sqlzoo.net/wiki/SELECT_names

-- concat add two columns
select name, code, concat(name, ', ' ,code) from country;

-- i want that country which country and code together is equal to "Albania ALB"
select * from country
where concat(name,' ',code) = "Albania ALB";

-- question: 11 (hard) The capital of Luxembourg is Luxembourg.
-- Show all the countries where the capital is the same as the name of the country
-- Find the country where the name is the capital city.
-- Answer:
-- name= 'Albania', Capital = 'Albania xyz'
-- continent= Capital LIKE concat(name, xyz)
-- Query: 
-- select Name from country where Capital LIKE concat(name,' ','City');