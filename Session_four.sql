-- Functions
/*
Functions are set of business logic that we can use many time as we want(code reusable)

two types
Scalar function -> work row by row (result for each)(applied on each row and give result for each row)'
multiline function -> applied on multiple line but give one output

Scalar Function can apply: date, int, float, string

String functions: 

-- case conversion: Lower case to upper case & uppercase to lower case
*/
use world;
select name, continent, upper(name), lower(name) from country;

-- concatintion 
select name, continent, concat(continent, '-regex') from country;
select name, continent,code, concat(continent, '-', code) from country;

-- concat_ws: concat with a seprator (we have to give seprator only one time)
select name, continent, concat_ws('-',continent, code,'Regex') from country;

-- substring => extracting character based on postioning
-- word start from index which we will give
-- One based indexing in MySQL
select name, substr(name,3) from country;
select name, substr(name,1,3) from country;
select name, substr(name,1),substr(name,2,5) from country;-- start from 2 and give 5 letter or its max length if less than 5

-- 2nd position start (negative indexing)
select name, substr(name,2),substr(name,-2) from country;
select name, substr(name,1),substr(name,-5,3) from country;

-- select name and continent where country 1st letter and continent 1st letter is same
select name, continent, substr(name,1,1), substr(continent,1,1) from country
where substr(name,1,1)= substr(continent,1,1);

select name, continent from country where substr(name,1,3) = 'alg';
select name, continent from country where name like'Alg%';

-- instr: search first positon of a character
select name, instr(name, 'e') from country;

select length(' yash');-- one white space and 4 letters but it is nots always
-- rigth coz it tell total byte used

-- so for length 
select name, char_length(name) from country;

-- trim: remove from both side (removes extra spaces or for removing characters)
-- ltrim for left trim and rtrim for right
-- not removes letters mid space use replace for it
select char_length(trim('    yash      '));
select rtrim('    yash      ');

-- trim will remove all last 'g' but replace will remove all 'g'
select trim('    yaggshgggggg');
select trim( both 'g' from '    yaggshgggggg');

-- this is case sensitive
select name, trim(both 'a' from name) from country;
select name, trim(both 'A' from name) from country;
-- for trailoing means removing end
-- for leading means removing starting

-- lpad & rpad
-- making our data of fixed characters from either left or right
select name, population, lpad(Population, 9, '#') from country;