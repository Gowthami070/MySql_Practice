use company;
create table department(
Dept_id int,
Dept_name varchar(20),
Location varchar(30),
Head_ID int
);
insert into department values
(1,"Development","Hyderbad",1891),
(2,"Testing","Chennai",9822),
(3,"Ui/UX Designing","Pune",6342),
(4,"HR","Noida",6345),
(5,"Security","Andhra Pradesh",3635);

alter table department add primary key (Dept_id);

ALTER TABLE employee1
ADD CONSTRAINT fk_employee_department
FOREIGN KEY (Dept_Id)
REFERENCES department(Dept_id);

show create table employee;
desc employee;