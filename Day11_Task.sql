Write a query to display the department name, employee count, and average salary, sorted by average salary in descending order.
Write a query to find employees who have the same salary as another employee in a different department.
Create a view to display the minimum, maximum, and average salary for each department.
Create a view to display departments that do not have any employees
Write a query to find employees who have a salary greater than every employee in the HR department.
Write a query to display the department name, employee count, and average salary, sorted by average salary in descending order.


select emp_name,count(*) as employee_cnt,avg(salary) 
from employee
group by emp_name
order by avg(salary) desc;

create view salary_details as(
	select job,min(salary),max(salary),avg(salary)
	from employee
    group by job
);
select * from salary_details;

create view no_employee as (
	select emp_name,job from employee 
    group by job
	where emp_name is null
);
select * from no_employee;
select * from employee;
select * from depeartmet;
select 
	e.emp_name,
	e.dept_no,
	d.dept_id
from employee as e
inner join depeartmet as d
on e.dept_no=d.dept_id;

SELECT 
    d.dept_name,
    COUNT(e.emp_no) AS employee_count,
    AVG(e.salary) AS average_salary
FROM depeartmet d
LEFT JOIN Employee e
    ON d.dept_id = e.dept_no
GROUP BY d.dept_id, d.dept_name
ORDER BY average_salary DESC;

SELECT DISTINCT
    e1.emp_no,
    e1.emp_name,
    e1.salary,
    e1.dept_no
FROM Employee e1
JOIN Employee e2
    ON e1.salary = e2.salary
   AND e1.dept_no <> e2.dept_no;
   
CREATE VIEW Department_Salary_Stats AS
SELECT
    d.dept_name,
    MIN(e.salary) AS minimum_salary,
    MAX(e.salary) AS maximum_salary,
    AVG(e.salary) AS average_salary
FROM Department d
LEFT JOIN Employee e
    ON d.dept_id = e.dept_id
GROUP BY d.dept_id, d.dept_name;
select * from Department_Salary_Stats;

CREATE VIEW Empty_Departments AS
SELECT
    d.dept_id,
    d.dept_name
FROM depeartmet d
LEFT JOIN Employee e
    ON d.dept_id = e.dept_id
WHERE e.emp_id IS NULL;

SELECT
    e.emp_id,
    e.emp_name,
    e.salary,
    e.dept_id
FROM Employee e
WHERE e.salary > ALL (
    SELECT e2.salary
    FROM Employee e2
    JOIN Department d
        ON e2.dept_id = d.dept_id
    WHERE d.dept_name = 'HR'
);