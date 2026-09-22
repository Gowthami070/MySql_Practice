SELECT *
FROM employee
limit 3
OFFSET 2;
select * from employee limit 5 offset 3;
select * from employee
order by salary desc
limit 3 offset 2;
------------------------------
select * from employee limit 3 offset 2;
select * from employee limit 2 offset 5;
select * from employee
order by salary asc
limit 2 offset 3;
select * from employee limit 5 offset 5;
select * from employee limit 5 offset 15;
select * from employee
order by salary desc
limit 1 offset 1;
select * from employee order by salary desc limit 1 offset 1;
select * from employee order by salary asc limit 1 offset 2;
