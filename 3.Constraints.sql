create table employee(
emp_id int primary key,
emp_name varchar(50) NOT NULL,
email varchar(50) unique,
salary int not null);

create table customer(
c_id int,
c_name varchar(50),
email varchar(50) unique not null,
phone varchar(15)
);

create table student(
student_id int primary key,
student_name varchar(50) not null,
age int check(age >=18),
salary int check(salary > 10000),
city varchar(50) default 'Hyderabad'
);















