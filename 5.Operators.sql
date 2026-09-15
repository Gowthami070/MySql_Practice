-- operators

use collegedb;
select * from employee;

-- arthmetic operator

select emp_name,salary from employee;
select emp_name,salary,salary*12 as annula_salary from employee;
select emp_name,salary,salary+5000 as incremented_salary from employee;
select emp_name,salary,salary-2000 as deducted_salary from employee;
select emp_name,salary,(salary*12)/12 as monthly_salary from employee;
---------------------------------
select emp_name,salary,salary*12 as annual_salary from employee;
select emp_name,salary+10000 as incremented_salary from employee;
select emp_name,salary-5000 as deducted_salary from employee;
select emp_name,salary*2 as doublt_salary from employee;
select emp_name,salary,salary*12 as annual_salary,salary+(salary*10/100) as bonus_added_salary from employee;

-- comparision operator

select * from employee where job_role ='HR';
select * from employee where salary>80000;
select * from employee where salary<50000;
select * from employee where salary>=50000;
select * from employee where age<=25;
select * from employee where job_role<>'HR';
select * from employee where job_role!='HR';
--------------------------------
select * from employee where salary>70000;
select * from employee where salary<50000;
select * from employee where age>=25;
select * from employee where age<=24;
select * from employee where job_role<>'HR';
select * from employee where salary=88000;

-- logical operators

select * from employee where salary > 50000 and age>25;
select * from employee where city ='Hyderabad' or city='Chennai'; 
select * from employee where not city ='Hyderabad';
----------------------
select * from employee where salary > 50000 and age>25;
select * from employee where city ='Hyderabad' or city='Chennai'; 
select * from employee where job_role = 'HR' and salary>50000;
select * from employee where age<25 or salary >80000;
select * from employee where not city ='Hyderabad';
select * from employee where (city ='Hyderabad' and salary>70000) or city='Chennai'; 

-- Bitween

select * from employee where salary between 40000 and 80000;
select * from employee where age between 22 and 26;
select * from employee where joining_date between '2020-01-01' and '2023-12-31';
select * from employee where salary between 40000 and 60000 or 90000 and 120000;

-- in 

select * from employee where city in('Hyderabad','Chennai','Pune');
select * from employee where job_role in("HR",'Testing','Developer');
------------------------------
select * from employee where city in('Hyderabad','Chennai','Pune');
select * from employee where job_role in("HR",'Testing','Developer');
select * from employee where age in(22,25,27,31);
select * from employee where city in('Hyderabad','Vizag','Bangalore');
select * from employee where city in('Hyderabad','Chennai') 
					   and job_role in('Developer','HR');
-- not in

select * from employee where city not in('Hyderabad','Chennai');
select * from employee where job_role not in('HR','Testing');
select * from employee where age not in(22,25,31);
select * from employee where city not in('Pune','Vizag','Bangalore');                       
select * 
from employee 
where city not in('Hyderabad','Chennai')
and job_role not in('HR','Sales');
                                           
-- like 

select * from employee where emp_name like 'R%';
select * from employee where emp_name like '%a';
select * from employee where emp_name like '%a%';
select * from employee where email like '%gmail.com';
select * from employee where email like '%yahoo.com';
select * from employee where emp_name like 'M%' 
						and emp_name like '%a';
select * from employee where emp_name like 'M%a';					
select * from employee where emp_name like 'R___';
select * from employee where emp_name like 'R___';

select * from employee where emp_name like 'R%' and 'R___';
select * from employee where emp_name like 'R_';

--- is null and is not null 

create table employee_bonus(
emp_id int,
emp_name varchar(50),
bonus int
);
INSERT INTO employee_bonus VALUES
(101, 'Ravi', 5000),
(102, 'Priya', NULL),
(103, 'Janu', 3000),
(104, 'Raju', NULL),
(105, 'Suresh', 4000);
select * from employee_bonus;
----------------
select * from employee_bonus where bonus is null;
select * from employee_bonus where bonus is not null;
select emp_name,bonus from employee_bonus where bonus is null;
select * from employee_bonus where bonus >3000;
select * from employee_bonus where bonus is not null and bonus >3000;
select * from employee_bonus where bonus is not null and bonus <4000;
select * from employee_bonus where bonus=null;


















