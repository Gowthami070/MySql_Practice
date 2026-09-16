-- order by

use collegedb;
select * from  employee order by salary asc;
select * from  employee order by salary desc;
select * from employee order by emp_name desc;
select * from employee order by emp_name asc;
select * from employee order by joining_date asc;
select * from employee order by joining_date desc;
select * from employee where salary>50000 order by salary desc;
select * from employee order by job_role desc, salary desc;
select emp_name, salary*12 as annual_salary from employee order by emp_name desc, salary desc;
----------------------------------------
select * from employee order by salary asc;
select * from employee order by salary desc;
select * from employee order by emp_name asc;
select * from employee order by joining_date asc;
select * from employee where salary>50000 order by salary desc;
select * from employee order by job_role asc,salary desc;
select emp_name,salary, salary * 12 as annual_salary from employee order by annual_salary desc;