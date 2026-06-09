-- STRING FUNCTIONS

--- UPPER, LOWER
select length('umulhasanah');

select UPPER('umulhasanah');
select LOWER('UMUL HASANAH');

select first_name, upper(first_name)
from employee_demographics;

--- TRIM
select trim('     mul     ');
select rtrim('     mul     ');

select first_name,
left(first_name, 4),
right(first_name, 4),
substring(first_name, 3,2),
birth_date,
substring(birth_date, 1,4) as birth_year
from employee_demographics;

--- REPLACE

select first_name, replace(first_name, 'a','ei') as broken_name
from employee_demographics;

select locate('l','umul');

select first_name, locate('An',first_name) as broken_name
from employee_demographics;


select first_name, last_name,
concat(first_name,' ',last_name) as name_people
from employee_demographics;
