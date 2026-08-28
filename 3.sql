CREATE DATABASE student1_db;   -- Skip if it already exists
USE student1_db;
CREATE TABLE student1(
    roll_no INT,
    name VARCHAR(50),
    age INT,
    marks INT,
    branch VARCHAR(30)
);

INSERT INTO student1 VALUES
(101,'Rahul',20,85,'CSE'),
(102,'Hari',21,90,'CSM'),
(103,'Raju',19,75,'CSD'),
(104,'Priya',20,95,'CSE'),
(105,'Anjali',22,88,'ECE'),
(106,'Kiran',21,70,'EEE'),
(107,'Sneha',20,92,'CSE'),
(108,'Ajay',19,80,'ECE');
select count(marks) from student1;
select count(*) from student1;
select count(marks) from student1 where branch='CSE';
select count(age) from student1;
select max(age) from student;
select avg(marks) from student1;
select max(marks) from student1;
select sum(marks) from student1;

