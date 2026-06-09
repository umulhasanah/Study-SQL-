-- WHERE CLAUSE --

select *
from employee_salary
where salary >= 50000;

select*
from employee_demographics
where age <= 30 = 'Old';

-- AND OR NOT -- LOGICAL OPERATORS
select*
from employee_demographics
where age < 40 
and gender = 'Male';

select*
from employee_demographics
where age < 40 
or not gender = 'Male';

select*
from employee_demographics
where (first_name = 'Tom' and age = 36) or age > 45;

-- LIKE STATEMENT --
-- % and _
select*
from employee_demographics
where first_name like 'Jer%';

select*
from employee_demographics
where first_name like 'A__';

select*
from employee_demographics
where first_name like 'T_%';

select*
from employee_demographics
where age > 45 and gender Like 'Ma%';