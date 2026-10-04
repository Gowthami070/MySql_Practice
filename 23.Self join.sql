use collegedb;
create table employee_manager(
	emp_id int primary key,
	emp_name varchar(50),
	manager_id int
);
INSERT INTO employee_manager VALUES
(101, 'Ravi', NULL),
(102, 'Priya', 101),
(103, 'Janu', 101),
(104, 'Raju', 102),
(105, 'Suresh', 102),
(106, 'Mahesh', 103);
select * from employee_manager;
-------------------------------------
select 
	m.emp_name as manager,
	e.emp_name as employee
from employee_manager e
join employee_manager m
on e.manager_id=m.emp_id;
select 
	m.emp_name as manager_name,
	e.emp_name as employee_name
from employee_manager e
join employee_manager m
on e.manager_id=m.emp_id
order by manager_name asc;
select 
	distinct e.emp_id as employee_id,
	m.emp_name as employee_name 
from employee_manager e
join employee_manager m
on e.manager_id=m.emp_id
group by e.emp_id,m.emp_name;
select 
	e.emp_name as employee_name,
	m.emp_name as manager_name
from employee_manager e
join employee_manager m
on e.manager_id=m.emp_id
where m.emp_name='Ravi';
select 
	e.emp_id as employee_id,
	e.emp_name as employee_name,
	m.manager_id as manager_id,
	m.emp_name as manager_name
from employee_manager e
join employee_manager m
on e.manager_id=m.emp_id;
select 
	m.emp_name as manager_name,
	count(e.emp_id) as employee_cnt
from employee_manager e
join employee_manager m
on e.manager_id=m.emp_id
group by m.emp_name;
select 
	m.emp_name as manager_name,
	count(e.emp_id) as employee_cnt
from employee_manager e
join employee_manager m
on e.manager_id=m.emp_id
group by m.emp_name
having count(e.emp_id)>1;
select 
	e.emp_name as employee_name,
	m.emp_name as manager_name,
	m.manager_id as manager_id
from employee_manager e
join employee_manager m
on e.manager_id=m.emp_id;
select 
	m.emp_name as manager_name,
	count(e.emp_id) as employee_cnt
from employee_manager e
join employee_manager m
on e.manager_id=m.emp_id
group by m.emp_name
order by employee_cnt desc
limit 1;


