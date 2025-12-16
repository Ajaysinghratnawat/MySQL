use world;

select count(name) from country where continent = 'Asia' and indepyear>1950;

-- get total country which go independence after 1950 in each continent
select continent, count(name) from country where indepyear> 1950 group by continent;

select continent, sum(population) from country group by continent;
select * from country;

-- WHERE will only filter the data which will exist
-- what is d/f b/w WHERE and HAVING
-- Where clause is used to filter the data from column but other hand
-- HAVING is used to filter the data on the aggregte column

select continent, sum(population) from country group by continent having sum(population)>30401150;
-- having used after group by and WHERE used before group by

-- find out continent name total continent population whose life expectancy of greater than 35.05
select continent, sum(population) from country where lifeExpectancy>35.0 group by continent;
select * from country where lifeexpectancy>35.0;
select * from country;
-- you need to find out the total countries for each government form where the total numb. of countries should be greater than 30.
select count(name) as totalcountry, governmentForm 
from country group by governmentform 
Having totalcountry>30;

-- you need to find out only for the countries and government form having there capital greater than 30 and total population greater than 3lac.
SELECT governmentForm, count(name), sum(population) 
FROM country WHERE capital>30 GROUP BY governmentform 
HAVING sum(population)>300000;

select continent,region, count(name) from country group by continent, region;


