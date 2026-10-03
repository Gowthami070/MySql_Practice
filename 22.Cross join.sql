use collegedb;
select 
e.emp_name,
d.dept_name
from employee e
cross join department d;
select 
e.emp_name,
d.dept_name,
d.location
from employee e
cross join department d;
select 
count(*)
from employee 
cross join department;
select *
from employee 
cross join department;
