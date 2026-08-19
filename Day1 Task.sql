create database company;
use company;
create table employee1(
Emp_no int primary key,
Emp_name varchar(50),
Role varchar(50),
Join_Date date,
Reports_To int,
Salary int,
Bonus int,
Dept_Id int,
Blood_Group varchar(3),
Emp_Type varchar(20),
Gender varchar(10),
DOB date
);
insert into employee1 values (1127,'Vani',"Frontend Developer",'2021-03-10',1739,80000,5000,1,'A+',"Full-Time","Female",'1993-07-19'); 
insert into employee1 values 
(1228,'Raj',"Backend Developer",'2022-08-20',1897,78000,9000,2,'AB+',"Part-Time","Male",'1983-06-23'),
(1358,'Vajay',"AI Engineering",'2023-09-18',1657,89000,6000,1,'B+',"Full-Time","Female",'1973-08-18'),
(1238,'Surya',"Software Developer",'2024-06-24',1967,69000,5000,2,'AB-',"Part-Time","Male",'1967-10-14'),
(1134,'Ravi',"Manual Testing",'2021-04-29',1977,75000,7000,1,'O+',"Full-Time","Female",'1989-07-16');
select * from employee1;
