-- aggregate function (to perform the calculation on set of rows)
-- -> applied on multiple rows and give multiple output

-- count
use world;

select * from country;
select count(*) from country;-- every row will be counted either they have null or not
select count(indepyear) from country;-- count + column name only count where null is not

select count(*), count(indepyear) from country;

-- distinct counts unique values
select distinct(continent) from country;

-- distinct using in finding multiple column unique values
select distinct continent, region from country;

select count(population), sum(population), avg(population) from country;

select count(distinct(governmentform)) from country;

select governmentform from country;
select count(governmentform), count(distinct(governmentform)) from country where continent='Asia';

select sum(population) from country where continent='Africa';

-- tot num of countries, sum of population & distinct indep year in africa
select count(name), sum(population), count(distinct(indepyear)) from country where continent='Africa';

-- get the total countries avg surface area and the tot.population for the countries which has 
-- got their independence from year 1947 to 1998(these year should not be included)name, from country
select count(name), avg(SurfaceArea), sum(population) from country
where Indepyear>1947 && Indepyear<1998;

-- get the total number of countries & the number of unique continents along with the average
-- population and the toatal number of capitals for the countries starting with 'A' or 'D'
select * from country;
select count(name), count(distinct continent), avg(population), sum(capital)
from country where name like 'A%' or name like 'D%'; -- chatgpt while creating notes tell me why
-- we used like not name = 'A%'

select count(name), continent from country where continent='Asia';
select count(name), continent from country where continent='Europe';
-- here finding different count of name for single continent coz of aggregate function

-- tool -> group by  -> filtering similar value together
select continent from country group by continent;
-- finding number of rows in group
select continent, count(*) from country group by continent;

select indepyear, count(*) from country group by indepyear;
-- only print that column which we grouped

-- whenever we do group by then we cannot select other column
-- select indepyear,name from country group by indepyear;

select continent, count(name), sum(population), avg(population),
max(population),min(population), max(indepyear), min(indepyear)
from country group by continent;

-- from each city table you have to find the total cities, total districts, unique districts
-- total city, total population from the city table
select countrycode, count(*),count(district),count(distinct district), sum(population)
from city group by countrycode;