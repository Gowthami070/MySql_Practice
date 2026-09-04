use company;
create table employee(
Emp_no int primary key,
Emp_name varchar(20),
Job varchar(30),
Hiredate date,
Manager varchar(20),
Salary int,
comission int,
Dept_no int
);
insert into employee values
(1,'Hari','Python developer','2020-5-10','Ramakrishna',60000,5000,1),
(2,'Priya','Java Developer','2019-6-28','Srinivas',55000,10000,2),
(3,"Hema",'SQL Developer','2024-4-30','Viswa',45000,3000,3),
(4,"Ram","Cyber Security",'2026-6-20','John',25000,2000,4),
(5,"Mahesh","Customer Service",'2025-3-12','Naresh',31000,4000,5),
(6,'Harikrishna','Python developer','2019-7-16','Ramakrishna',80000,2000,1),
(7,"SriHema",'SQL Developer','2022-12-31','Viswa',23000,1000,3),
(8,"JayRam","Cyber Security",'2010-11-29','John',47000,2000,4),
(9,'Vital','Content Creator','2013-6-26','Nagaraju',35000,20000,6),
(10,"Narendra","Testing",'2015-10-9','Prasad',67000,2000,7);
select * from employee;

CREATE A TABLE named EMPLOYEE. The table contains 8 columns: EMPNO, ENAME, JOB, HIREDATE, MGR, SAL, COMM, DEPTNO.
create table depeartmet(
Dept_id int primary key,
Dept_name varchar(20),
Location varchar(30)
);
insert into depeartmet values
(1,'Python developer','Hyderabad'),
(2,"Java developer","Chennai"),
(3,'SQL Developer','Pune'),
(4,'Cyber security','Hyderabad'),
(5,'Customer service','Bangalore'),
(6,'Content creator','Chennai'),
(7,'Testing','Hyderabad');
select * from depeartmet;