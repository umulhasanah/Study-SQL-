-- JOINS

-- joins allow you to combine 2 tables together (or more) if they have a common column.
-- doesn't mean they need the same column name, but the data in it are the same and can be used to join the tables together
-- there are several joins we will look at today, inner joins, outer joins, and self joins


-- here are the first 2 tables - let's see what columns and data in the rows we have in common that we can join on

select*
from employee_demographics;

select*
from employee_salary
;

select*
from employee_demographics
inner join employee_salary
	on employee_demographics.employee_id = employee_salary.employee_id
;

select*
from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id
;

select dem.employee_id, age, occupation
from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id
;

-- OUTER JOIN

select *
from employee_demographics as dem
LEFT join employee_salary as sal
	on dem.employee_id = sal.employee_id;
    
select *
from employee_demographics as dem
RIGHT join employee_salary as sal
	on dem.employee_id = sal.employee_id;
    
    
-- SELF JOIN

select *
from employee_demographics as dem
RIGHT join employee_salary as sal
	on dem.employee_id = sal.employee_id;
    
    -- what we could do is a secret santa so the person with the higher ID is the person's secret santa


SELECT *
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id = emp2.employee_id
    ;

-- now let's change it to give them their secret santa
SELECT *
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id + 1  = emp2.employee_id
    ;
    
SELECT emp1.employee_id as emp_santa, emp1.first_name as santa_first_name, emp1.last_name as santa_last_name, emp2.employee_id, emp2.first_name, emp2.last_name
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id + 1  = emp2.employee_id
    ;

-- So leslie is Ron's secret santa and so on -- Mark Brandanowitz didn't get a secret santa, but he doesn't deserve one because he broke Ann's heart so it's all good
    
-- JOIN MULTIPLE TABLE TOGETHER

select *
from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id
inner join parks_departments pd
	on sal.dept_id = pd.department_id  
;
    
select *
from parks_departments;