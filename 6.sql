IN & NOT IN

select * from student1 where s_course in ('CSE',"ECE");
select s_name from student1 where s_course in ('CSE',"IT");
select * from student1 where s_course not in ('CSE',"ECE");
select s_name from student1 where s_age in (21,23,25);
select s_name,s_marks from student1 where s_marks in (65,79,98);