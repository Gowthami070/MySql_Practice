select distinct job_role
from employee
where salary>70000;
select *
from employee

--- in
where job_role in(
	select job_role 
	from employee
	where salary >70000
);
select *
from employee
where salary = (
	select max(salary)
	from employee
);
select *
from employee
where salary in(
	select max(salary)
	from employee
);
select *
from employee
where salary in (
	select salary
	from employee
	where city ='Chennai'
);

--- any
select *
from employee
where salary > any(
	select salary
	from employee
	where city='Chennai'
);
select *
from employee
where salary < any(
	select salary 
	from employee
	where job_role='HR'
);

--- all
select *
from employee
where salary > all(
	select salary
	from employee
	where city='Chennai'
);
----------------------------------------
select *
from employee
where job_role in (
	select job_role 
	from employee
	where salary>80000
);

select *
from employee
where city in (
	select city 
	from employee
	where salary>90000
);

select *
from employee
where job_role in(
select job_role
from employee
where city='Hyderabad'
);

select *
from employee
where salary> any(
	select salary
	from employee
	where city='Chennai'
);

select *
from employee
where salary> all(
	select salary 
	from employee
	where city='Chennai'
);

select *
from employee
where salary < any(
	select salary
	from employee
	where city='Hyderabad'
);

select *
from employee
where salary < all(
	select salary
	from employee
	where city='Hyderabad'
);

select *
from employee
where job_role in(
	select job_role 
	from employee
	where salary<50000
);

select *
from employee
where city in(
	select city from employee
	where job_role='Developer'
);

select *
from employee
where salary> all(
	select salary
	from employee
	where job_role='Testing'
);