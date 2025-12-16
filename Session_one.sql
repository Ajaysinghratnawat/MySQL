select database();

-- tables
show tables;

-- to see the structure of table
describe city;

-- to print data of a table(* used to show all)
select * from city;

-- to print any specific columns
select name, population from city;

-- column can be print in any order
select population, name, district from city;

-- it will add 10 to all population value but original values doesn't effect
select population+10, name from city;

-- good habit to write query is to seprate lines and 
select name, population,
countrycode, population
from city;

-- write keywords in capital is a good habit
SELECT name, population
FROM city;

-- getting all columns + again population with calculation
-- alias (nickname)
select *,population+2+4 as 'newPopulation' from country;
