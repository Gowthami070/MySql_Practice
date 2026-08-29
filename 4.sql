create database school1;
show databases;
use school1;
create table student1 (
s_id int,
s_name varchar(50),
s_age int,
s_course varchar(50),
s_marks int
);
show tables;
insert into student1
values (101,"Mahi",22,"CSE",89),
(102,"Ravi",25,"ECE",90),
(103,"Hari",21,"CSE",65),
(104,"Priya",22,"IT",79),
(105,"Anu",23,"EEE",98);
desc student1;