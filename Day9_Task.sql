Write a query to display the name and salary of employees who earn a commission of ₹1,400?
Write a query to display all details of employees whose commission is greater than their salary?
Write a query to display the employee number of employees who were hired before the year 1987?
Write a query to display all details of employees working as ANALYST?
Write a Python program using a function to generate all possible permutations of a string.
Write a Python program using a generator function that continuously generates the next prime number starting from a given number.

select emp_name,salary from employee where comission>1400;
select * from employee where comission>salary;
select * from employee;
select emp_name,count(*) from employee group by emp_name;
select emp_name from employee where job='python developer';