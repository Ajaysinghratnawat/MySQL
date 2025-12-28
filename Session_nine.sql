-- Data model
-- Structure -> how you organize data
-- 1. Conceptual Model -> Entity,Attribute
-- 2. Logical Model -> Entity,Attribute,Relationship
-- 3. Physical Model -> table,column,Relationship,data types
 
-- Primary key is unique and not null
-- Foreign Key use for create relationship

--             (Foreign Key)             (Primary Key)
-- oid   Prod    Cid                        Cid       Cname
-- 101   A       1                          1          Jai
-- 102   B       2                          2          Aman
-- 103   C       3                          3          Yash
-- 103   A       3                          3          Yash
-- 104   D       4                          4          Tushar
-- 104   E       4                          4          Tushar
-- 104   A       4                          4          Tushar

use world;
-- Primary Key(id), Foreign Key(CountryCode) in city
select * from city;
describe city;
-- Primary Key(code)
select * from country;
select count(code),count(distinct code) from country;
describe country;

-- Join use to connect two table on the basis of primary key & foreign key
-- as -> Alias name
select cy.id,cy.name,cy.countrycode ,cnt.code,cnt.name from city as cy
join  country as cnt 
where cy.countrycode=cnt.code;
select cy.id,cy.name,cy.countrycode from city as cy;
select cnt.code from country as cnt;

-- Q. find the city name , population the country name along with government 
-- form for each city
select cy.name,cy.population,cnt.name,cnt.governmentform from 
 city as cy join country as cnt
 where cy.countrycode=cnt.code;

select * from countrylanguage;
select * from country;
-- Q. get the country name population and the language spoken
--  with the perentage of each language
select cnt.name,cnt.population,cl.language,cl.percentage
 from country as cnt join countrylanguage as cl 
where cnt.code=cl.countrycode;
