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

WHERE Clause

select * from student1;
select s_name from student1;
select s_name,s_marks from student1;
select s_id,s_name,s_course from student1;
select s_age from student1;
select distinct s_course from student1;
select * from student1 limit 3;
select * from student1
where s_age=22;
select * from student1 where s_course="CSE";
select * from student1 where s_marks = 90;
select s_name from student1 where s_age>21;
select s_name,s_marks from student1 where s_course="IT";
select s_name from student1 where s_marks=98;
select * from student1 where s_course="EEE";
 
 AND & OR
 
select s_name,s_age,s-course,s_marks from student1 where s_course="CSE" and s_marks>70;
select * from student1 where s_age=22 and s_marks>80;
select * from student1 where s_course="CSE" or s_course="IT";
select s_name from student1 where s_age=21 or s_age=25;
select * from student1 where s_marks>80 and s_age>22;
select * from student1 where s_course='CSE' and s_marks>80 or s_course="EEE";

IN & NOT IN

select * from student1 where s_course in ('CSE',"ECE");
select s_name from student1 where s_course in ('CSE',"IT");
select * from student1 where s_course not in ('CSE',"ECE");
select s_name from student1 where s_age in (21,23,25);
select s_name,s_marks from student1 where s_marks in (65,79,98);
