-- SQL Session 3
-- select statement 

use world;

show tables;

select * from city;

-- problem we get all rows
-- where using clause we will filter the data(I want limited rows)
-- eg. i want data of like cities which have district of 'Zuid-Holland'
select * from city where district = 'Zuid-Holland';
-- In RDBMS Data is filtered row by row
select * from city where CountryCode = 'ARG';

-- i want city having more than 6 lakh population
select * from city where population>600000;

select * from city where CountryCode <> 'ARG';-- either use <> or != both are same "not equal to"

select * from country;
-- in operator is used to filter the data in the specific set of values
select * from country where Continent in ('North America', 'Europe');-- getting data of only country which continent is north america & europe
select * from country where Continent not in ('North America', 'Europe');-- getting data which is not this continent
select * from country where Continent in ('North America', 'Europe','india');-- if data is not found for india coz its not continent then it will return nothing for it and also not return error

select * from country where Continent in ('Caribbean','Asia');

-- indep year
select name, continent, IndepYear from country where IndepYear in (1901,1960);
select name, continent from country where IndepYear in (1901,1960);

-- between - finding in range of value
select name,continent, indepyear from country where indepyear between 1947 and 1960;-- getting all countries who got independent between 1947 to 1960
-- opposite now
select name, continent, indepyear from country where IndepYear not between 1947 and 1960;-- now getting all data despite of 1947 to 1960

-- Questions to solve
-- get the code, country name and the region where the region is not middleEast?
-- get the name, indepYear, and population with the expected 10% increase in the population?
-- get all the columns of the country where the life Expentany 38.3 or 66.4
-- get the name, continent, population and GNP from the table where the population is not from 5k to 2lakh
select * from country;
select code, name, Region from country where Region <> 'middleEast';
select name, indepyear, population from country where population*0.1+Population;-- population 10% + population
-- or
select name, indepyear, population, population*1.1 from country;
select * from country where lifeExpectancy in (38.3, 66.4);
select  name, continent, population, GNP from country where Population not between 5000 and 200000;

-- like operator 
-- like=> searching for pattern
select name, continent from country where continent like 'Asia';-- '=' alternative is like
-- but like main work is to meet with pattern
-- we use some characters called wild Card characters
-- % [we are finding zero or more characters] eg. ASIA% starting word should asia then after there can be anything
select name, continent from country where name like 'Ba%';-- o/p Bangladesh, Bahrain, Bahamas, Barbados coz 'ba' is same but next can be anything

-- lets done this opposite
select name, continent from country where name like '%ba';-- o/p Aruba, Cuba coz starting can be anythng but last word should be 'ba'
select name, continent from country where name like '%ad%';-- o/p Bangladesh, Canada, Madagascar

-- { UnderScore } --> single character means only one
select name, continent from country where name like 'In__a';-- o/p india coz 'In__a' first & second character should be i & n and then two character can be anything and last should be a;
select name, continent from country where name like 'Ir__';

/*
Learning assignment
1. Logical operator
2. In Regex channel watch string function video(3 or 4 videos)
*/