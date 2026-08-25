create database college1;
use college1;
create table Employee2(
emp_id int primary key,
emp_name varchar(30),
gender varchar(10),
age int,
department_id int,
salary int,
city varchar(20),
joining_date date
);
select * from employee2;

insert into employee2 values
(1,'Ravi','Male',25,1,25000,'Chennai','2020-05-10'),
(2,'Mahi','Male',28,2,35000,'Hyderabad','2025-08-11'),
(3,'Harini','Female',23,3,20000,'Bangalore','2021-06-19'),
(4,'Rani','Female',22,4,27000,'Pune','2020-12-22'),
(5,'Hema','Female',27,5,32000,'Chennai','2010-05-06'),
(6,'Raju','Male',29,6,42000,'Vizag','2025-11-18'),
(7,'Mani','Male',21,7,58000,'Chennai','2021-03-20'),
(8,'Janu','Female',24,8,37000,'Pune','2015-05-30'),
(9,'Priya','Female',26,9,49000,'Hyderabad','2012-01-31'),
(10,'Sanju','Male',25,10,69000,'Mysore','2026-02-23');

create table Department(

department_id int,
department_name varchar(20),
location varchar(30)
);
insert into Department values
(1,'Python Developer','Hyderabad'),
(2,'Java Developer','Pune'),
(3,'Web Developer','Chennai'),
(4,'Frontend Developer','Bangalore'),
(5,'Backend Developer','Hyderabad'),
(6,'Cyber Security','Pune'),
(7,'Agentic AI','Chennai'),
(8,'Automation','Pune'),
(9,'Flask Developer','Hyderabad'),
(10,'Data Analyst','Pune');
select * from Department;

create table Projects(
project_id int,
project_name varchar(50),
department_id int,
budget int,
start_date date
);
INSERT INTO Projects VALUES
(101,'Python',1,100000,'2020-10-02'),
(102,'Java',2,200000,'2023-01-28'),
(103,'AI',3,150000,'2015-12-25'),
(104,'Backend-end',4,850000,'2011-10-02'),
(105,'Front-end',5,650000,'2023-11-16'),
(106,'Python',6,250000,'2020-09-22'),
(107,'Java',7,690000,'2005-05-31'),
(108,'Python',8,520000,'2021-09-21'),
(109,'Python',9,500000,'2006-02-25'),
(110,'Java',10,5820000,'2001-01-24');

create table Customers1(
customer_id int,
customer_name varchar(30),
city varchar(20),
email varchar(20),
phone varchar(15)
);
INSERT INTO Customers1 VALUES
(1101,'Anitha','Hyderabad','anitha@gmail.com','9876543210'),
(1102,'Ravi','Chennai','ravi@gmail.com','9123456780'),
(1103,'Mahi','Bangalore','mahi@gmail.com','9988776655'),
(1104,'Harini','Pune','harini@gmail.com','9012345678'),
(1105,'Rani','Vizag','rani@gmail.com','9345678901'),
(1106,'Hema','Mysore','hema@gmail.com','9567890123'),
(1107,'Raju','Hyderabad','raju@gmail.com','9871234560'),
(1108,'Mani','Chennai','mani@gmail.com','9123456789'),
(1109,'Janu','Pune','janu@gmail.com','9988123456'),
(1110,'Priya','Bangalore','priya@gmail.com','9012987654');

CREATE TABLE Orders(
    order_id INT,
    customer_id INT,
    product_name VARCHAR(30),
    quantity INT,
    price INT,
    order_date DATE
);

INSERT INTO Orders VALUES
(5001,1101,'Laptop',1,55000,'2025-01-15'),
(5002,1102,'Mobile',2,25000,'2025-02-20'),
(5003,1103,'Keyboard',3,1500,'2025-03-10'),
(5004,1104,'Headphones',1,3000,'2025-04-05'),
(5005,1105,'Monitor',2,18000,'2025-05-12'),
(5006,1106,'Mouse',4,800,'2025-06-18'),
(5007,1107,'Printer',1,12000,'2025-07-22'),
(5008,1108,'Tablet',2,22000,'2025-08-08'),
(5009,1109,'Smartwatch',1,7000,'2025-09-14'),
(5010,1110,'Webcam',3,2500,'2025-10-25');


