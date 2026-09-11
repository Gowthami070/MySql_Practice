create database collegedb;
use collegedb;

-- employee table
create table employee(
	emp_id int,
	emp_name varchar(50),
	age int,
	gender varchar(10),
	email varchar(50),
	phone varchar(15),
	salary decimal(10,2),
	job_role varchar(50),
	joining_date date,
	city varchar(30)
);

-- department table

create table department(
	dept_id int,
	dept_name varchar(50),
	location varchar(50),
	manager_name varchar(50)
);

-- project table

create table project(
	project_id int,
	project_name varchar(50),
	technology varchar(50),
	budget decimal(12,2),
	start_date date,
	status varchar(20)
);

-- inserting employee data

insert into employee values 
(101, 'Ravi', 25, 'Male', 'ravi@gmail.com', '9876543210', 45000, 'Developer', '2024-06-10', 'Hyderabad'),
(102, 'Priya', 29, 'Female', 'priya@gmail.com', '9657843210', 98000, 'Testing', '2020-12-15', 'Chennai'),
(103, 'Janu', 24, 'Female', 'janu@gmail.com', '87632107646', 89000, 'HR', '2018-07-22', 'Pune'),
(104, 'Raju', 26, 'Male', 'raju@yahoo.com', '7654321870', 123000, 'Cyber Security', '2005-05-30', 'Vizag'),
(105, 'Suresh', 25, 'Male', 'suresh@yahoo.com', '6543210656', 42000, 'Testing', '2012-11-19', 'Bangalore'),
(106, 'Mahesh', 22, 'Male', 'mahesh@yahoo.com', '9432165340', 66000, 'Developer', '2021-04-15', 'vizag'),
(107, 'Ramya', 22, 'Female', 'ramya@gmail.com', '9976432810', 34000, 'Sales', '2014-01-01', 'Chennai'),
(108, 'Mamatha', 23, 'Female', 'mamatha@yahoo.com', '8954543210', 75000, 'Developer', '2016-02-11', 'Hyderabad'),
(109, 'Srija', 31, 'Female', 'srija@gmail.com', '7654367210', 88000, 'HR', '2025-10-28', 'Hyderabad'),
(110, 'Rajesh', 27, 'Male', 'rajesh@gmail.com', '7657643210', 37000, 'Finance', '2021-9-10', 'Pune');

-- inserting department details

insert into department values
(1,'IT','Hyderabad','Srinivas'),
(2,'HR','Chennai','Viswa'),
(3,'Finance','Pune','Thrinadh'),
(4,'Markating','Bangalore','Rohith'),
(5,'Sales','Vizag','Aman');




