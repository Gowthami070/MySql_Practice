CREATE DATABASE college_db;
USE college_db;
CREATE TABLE student(
    roll_no INT,
    name VARCHAR(50),
    age INT,
    branch varchar(30)
);
INSERT INTO student
VALUEs(101,'Rahul',20,"CSE");
INSERT INTO student
VALUEs(102,'Hari',21,"CSM");
INSERT INTO student
VALUEs(103,'Raju',19,"CSD");
SHOW TABLES;
DESC student;
SELECT * FROM student;

