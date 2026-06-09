-- UNION

#A union is how you can combine rows together- not columns like we have been doing with joins where one column is put next to another
#Joins allow you to combine the rows of data

#Now you should keep it the same kind of data otherwise if you start mixing tips with first_names it would be really confusing, but you can do it.
#Let's try it out and use Union to bring together some random data, then we will look at an actual use case

select age, gender
from employee_demographics
union
select first_name, last_name
from employee_salary
;

select first_name, last_name
from employee_demographics
union
select first_name, last_name
from employee_salary
;

select first_name, last_name
from employee_demographics
union distinct
select first_name, last_name
from employee_salary
;

select first_name, last_name
from employee_demographics
union all
select first_name, last_name
from employee_salary
;

#Now Let's actually try to use UNION
# The Parks department is trying to cut their budget and wants to identify older employees they can push out or high paid employees who they can reduce pay or push out
-- let's create some queries to help with this

select first_name, last_name, 'old' as label
from employee_demographics
where age > 50;

SELECT first_name, last_name, 'Old Lady' as Label
FROM employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION
SELECT first_name, last_name, 'Old Man'
FROM employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION
SELECT first_name, last_name, 'Highly Paid Employee'
FROM employee_salary
WHERE salary >= 70000
ORDER BY first_name