-- numeric functions, dates
use world;
-- round off decimal value
select lifeexpectancy, round(lifeexpectancy) from country;-- converting decimal value to exact value

select 83.62, round(83.76, 1);-- 83.80

-- 456.23
-- '6' one place, '5' tenth place, '4' third place, so you are give nearest
-- it is called converting into one place
select (430.23), round(443.23,-2);

-- truncate 
-- what is truncate & its difference from round
select 456.67, round(456.68,1), truncate(456.67,1);

select 456.67, round(456.68,1), truncate(456.67,1), mod(43.6,3);

-- if you write any extra value in ceil decimal number it will make it plus
-- while floor always give lowest one
select pow(2,3), ceil(3.0000008), floor(3.99999);

-- date
-- inbilt date works to print date and time

select now();

select now(), curdate(), current_timestamp(), current_time();

-- add date
-- returning after 3 months date
select now(), adddate(now(), interval 3 month);

-- return 2 days less current date
select now(), subdate( now(), 2), year(now());

-- extract - extract part of date
select now(), extract(week from now());

-- %M specifier which gives month
select now(), date_format( now(), 'Month is %M, year is %Y, WeekDay is %w');

-- gives unique continent
select distinct (continent) from country;

-- gives count of total continent and count of total unique continent
select count(continent), count(distinct(continent)) from country;

select distinct(continent) from country where city like 'a%';