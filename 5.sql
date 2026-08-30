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