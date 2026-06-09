--- GROUP BY

select *
from employee_demographics;

select gender
from employee_demographics
group by gender;

select gender, count(age), max(age), min(age)
from employee_demographics
group by gender;

select occupation, salary
from employee_salary
group by occupation, salary;

--- ORDER BY
select *
from employee_demographics
order by gender, age;

select *
from employee_demographics
order by 3, 4;