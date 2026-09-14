-- foreign key

create table department(
	dept_id int primary key,
	dept_name varchar(50) not null
);

create table employee(
	emp_id int primary key,
	emp_name varchar(50) not null,
	dept_id int,
	foreign key(dept_id)
	references department(dept_id)
);

-- insert department details

insert into department values
(1,'IT','Hyderabad'),
(2,'HR','Chennai'),
(3,'Finance','Pune');

-- insert employee details 

insert into employee values
(101,'Ravi',1),
(102,'Priya',2),
(103,'Suresh',3);

create table department(
	dept_id int primary key,
	dept_name varchar(50) not null,
    manager_name varchar(50) not null
);

create table employee(
	emp_id int primary key,
	emp_name varchar(50) not null,
    salary int check(salary>10000),
	dept_id int,
	foreign key(dept_id)
	references department(dept_id)
);

-- composite key
create table enrollment(
	student_id int,
	course_id int,
	enrollment_date date,
	grade int,
	primary key(student_is,course_id)
);


create table student(
	student_id int primary key,
	student_name varchar(50) not null
);
use collegedb;
create table course(
	course_id int primary key,
	course_name varchar(50) not null
);

create table enrollment(
	student_id int,
	course_id int,
    
	primary key(student_id,course_id),

	foreign key(student_id)
	references student(student_id),

	foreign key(course_id)
	references course(course_id)
);
insert into student values
(101,'priya'),
(102,'ravi');

insert into course values
(501,'python'),
(502,'sql');

insert into enrollment values
(101,501),
(102,502),
(101,502),
(102,501);
select * from enrollment;




