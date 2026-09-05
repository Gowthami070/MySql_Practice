Write a query to display the name and designation of all the employees.
Write a query to display the name, job, and salary of all the employees.
Write a query to display all the department names present in the DEPT table.
Write a query to display the department name and location from the DEPT table.
Write a query to display the employee name and annual salary of all the employees.
Write a query to display all the details of the employees along with their annual salary.
Write a query to display the employee name and salary after a 10% deduction.
Write a query to display the employee name, job, and half-term salary of all the employees.
Write a query to display all employee details along with an annual bonus of ₹2,000.
Write a query to display the employee name, current salary, and salary after a 10% hike.
Write a query to display the employee name and salary after a 25% deduction.
Write a query to display the employee name and salary after adding ₹50 to the monthly salary.
Write a query to display the employee name and annual salary after a 10% deduction.
Write a query to display the total salary received by each employee, considering SAL + COMM.
Write a query to display all employee details along with their annual salary.

***************************************************

select emp_name,job from employee
select emp_name,job,salary from employee;
select dept_name from depeartmet;
select dept_name,location from depeartmet;
select emp_name, salary*12 as annual_salary from employee;
select emp_name, salary-salary*0.01 as deduction_salary from employee;
select emp_name,job,(salary*12)/6 as half_term_salary from employee;
select (salary*12)+2000 as annual_bonus from employee;
select emp_name,salary,salary*0.01+salary as annual_hike from employee;
select emp_name,salary,salary-salary*0.01 as salary_deduction from employee;
select emp_name,salary,salary+50 as extra_salary from employee;
select emp_name,salary*12,salary*12-salary*0.25 as salary_deduction from employee;
select emp_name,salary,salary+comission as received_salary from employee;
