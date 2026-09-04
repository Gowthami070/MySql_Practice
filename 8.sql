CREATE DATABASE college_db;

USE college_db;

CREATE TABLE student(
    roll_no INT,
    name VARCHAR(50),
    age INT,
    branch VARCHAR(30)
);

INSERT INTO student
VALUES(101,'Rahul',20,'CSE');

SHOW TABLES;

DESC student;

SELECT * FROM student;