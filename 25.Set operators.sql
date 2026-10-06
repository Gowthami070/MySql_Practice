use collegedb;

-- union
select emp_name from employee
union 
select dept_name from department;
select emp_name from employee
union 
select emp_name from employee_manager;
select emp_name,salary from employee
union 
select project_name,budget from project;
select emp_name,salary from employee
union
select start_date,technology from project;
select * from project;
select city from employee
union 
select location from department;
select city from employee
union 
select location from department
order by city;

-- union all
select emp_name from employee
union all
select emp_name from employee_manager;
select emp_name,salary from employee
union all
select project_name,budget from project;
select city from employee
union all
select location from department;
select city from employee
union all
select location from department
order by city;
-------------------------------------------
select city as employee_cities from employee
union
select location from department;
select city as employee_cities from employee
union all
select location from department;
select city as employee_cities from employee
union
select location from department;
select city as employee_cities from employee
union all
select location from department
where city='Hyderabad';
-----------------------------------------------

-- intersect
select city from employee
INTERSECT
select location from department;
select emp_name from employee
intersect
select emp_name from employee_manager;
--------
-- except

SELECT city
FROM employee

EXCEPT

SELECT location
FROM department;
select emp_name from employee
except
select emp_name from employee_manager;
select city from employee
except
select location from department;
------------------
select emp_name from employee
where salary > 60000
intersect
select emp_name from employee
where salary <= 60000;
select emp_name from employee
where salary > 60000
intersect 
select emp_name from employee
where city='Hyderabad';