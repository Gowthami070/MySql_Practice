use collegedb;
select * from project;
alter table project add column dept_id int;
DESCRIBE project;
INSERT INTO project
(project_id, project_name, technology, budget, start_date, status, dept_id)
VALUES
(201, 'Banking App', 'Python', 150000, '2024-01-10', 'Completed', 1),
(202, 'HR Portal', 'Java', 100000, '2024-03-15', 'Ongoing', 2),
(203, 'Sales Dashboard', 'Power BI', 80000, '2024-05-20', 'Ongoing', 5),
(204, 'Security System', 'Cyber Security', 200000, '2024-02-01', 'Completed', 1),
(205, 'Payroll System', 'Python', 120000, '2024-06-10', 'Ongoing', 2),
(206, 'Finance Tracker', 'SQL', 90000, '2024-07-05', 'Completed', 3),
(207, 'Marketing Website', 'HTML', 70000, '2024-08-12', 'Ongoing', 4),
(208, 'Inventory System', 'Java', 110000, '2024-09-01', 'Ongoing', 5),
(209, 'Employee Portal', 'Python', 130000, '2024-10-15', 'Completed', 2),
(210, 'Cloud Security', 'AWS', 180000, '2024-11-20', 'Ongoing', 1);
ALTER TABLE project
MODIFY project_id INT NOT NULL,
ADD PRIMARY KEY (project_id);

ALTER TABLE project
ADD CONSTRAINT fk_project_department
FOREIGN KEY (dept_id)
REFERENCES department(dept_id);
SHOW CREATE TABLE project;
select 
		e.emp_name,
		d.dept_name,
		p.project_name
from employee e
inner join department d
on e.dept_id=d.dept_id
inner join project p
on d.dept_id=p.dept_id;
------------------------------
select
	e.emp_name as employee_name,
	d.dept_name as department_name,
	p.project_name as project_name,
	p.status as project_status
from employee e
inner join department d
on e.dept_id =d.dept_id
inner join project p
on d.dept_id=p.dept_id;

select 
	e.emp_name as employee_name,
	e.job_role as job_role,
	d.dept_name as department_name,
	p.project_name as project_name,
	p.technology as technology
from employee e
inner join department d
on e.dept_id=d.dept_id
inner join project p
on d.dept_id=p.dept_id;

select 
	e.emp_name as employee_name,
	d.dept_name as department_name,
	p.project_name as project_name,
	p.budget as project_budget
from employee e
inner join department d
on e.dept_id=d.dept_id
inner join project p
on d.dept_id=p.dept_id
where p.budget>100000;

select 
	p.project_name as project_name,
	e.emp_name as employee_name,
	d.dept_name as dept_name
from employee e
inner join department d
on e.dept_id=d.dept_id
inner join project p
on d.dept_id=p.dept_id
where d.dept_name='IT';

select 
	d.dept_name as department_name,
	count(e.emp_id) as employee_cnt,
	count(p.project_id) as project_count
from employee e
inner join department d
on e.dept_id=d.dept_id
inner join project p
on d.dept_id=p.dept_id
group by d.dept_id,d.dept_name;

select 
	d.dept_name as department_name,
	sum(distinct p.budget) as total_project_budget
from department d
inner join project p
on d.dept_id=p.dept_id
group by d.dept_id,d.dept_name
having sum(p.budget)>2500000;

select 
	d.dept_name as department_name,
	p.project_name as project_name ,
	p.budget as total_budget
from department d
inner join project p
on d.dept_id=p.dept_id
where p.budget=(
select max(p2.budget)
from project p2
where p2.dept_id=d.dept_id
);

select
	d.dept_name as department_salary,
	avg(e.salary) as average_salary,
	sum(p.budget) as total_project_budget
from employee e
inner join department d
on e.dept_id=d.dept_id
inner join project p
on d.dept_id=p.dept_id
group by dept_name
having avg(e.salary)>60000 
		and sum(p.budget)>200000;
---------
select
	d.dept_name as department_name,
	count(distinct e.emp_id) as employee_cnt,
	count(distinct p.project_id) as project_cnt
from employee e
inner join department d
on e.dept_id=d.dept_id
inner join project p
on d.dept_id = p.dept_id
group by d.dept_id,d.dept_name;