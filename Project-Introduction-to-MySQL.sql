/*Part 1*/

/*1. Create Your First Database*/
CREATE DATABASE StudentRecords;
USE StudentRecords;

/*2. Create a Table with Appropriate Data Types*/
CREATE TABLE students
(studentId INT PRIMARY KEY NOT NULL,
firstName VARCHAR(50) NOT NULL,
lastName VARCHAR(100) NOT NULL,
age INT NOT NULL,
email VARCHAR(100) NOT NULL);

/*3. Insert Sample Data*/
INSERT INTO students (studentId, firstName, lastName, age, email) VALUES
(1, 'Caesar', 'Ortiz', 21, 'cgo1998@gmail.com'),
(2, 'Allison', 'Smith', 27, 'allsmith@gmail.com'),
(3, 'Laura', 'Rodriguez', 25, 'rodlaur@gmail.com'),
(4, 'Erik', 'Gaines', 23, 'bg2020@gmail.com'),
(5, 'Alfred', 'Brown', 24, 'alfredbrown@gmail.com');

/*Bonus Challenge*/
CREATE TABLE courses 
(courseId INT PRIMARY KEY NOT NULL,
courseName VARCHAR(100) NOT NULL,
courseDescription VARCHAR(500) NOT NULL,
studentId INT NOT NULL,
FOREIGN KEY (studentId) REFERENCES students (studentId));


/*Part 2*/

/*Basic Commands - Insert, Select, and Update Data*/
INSERT INTO students (studentId, firstName, lastName, age, email) VALUES
(6, 'Lizzete Williams', 25, 'lizzzz@gmail.com'),
(7, 'Peter Davis', 22, 'pdpdpd22@gmail.com');

SELECT * FROM students;

UPDATE students SET age = 21 WHERE student_id = 1;