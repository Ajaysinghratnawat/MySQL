-- if--------------------------------
-- if(condition,true,false)
-- if(condition,true,if(condition,true,false)

-- case------------------------------
-- case
--    when condition | Expression then Output
--    when condition | Expression then Output
-- end

use world;
select name,population,
case
   when population=0 then 'No population'
   when population between 8000 and 70000 then 'Med population'
   else 'condition is false'
end from country;

select count(*),
case
   when population=0 then 'No population'
   when population between 8000 and 70000 then 'Med population'
   else 'condition is false'
end as 'status' from country group by status;

