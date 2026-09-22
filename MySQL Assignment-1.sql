CREATE DATABASE employees;
USE employees;
CREATE TABLE Location(
	Location_id int,
	Location varchar(30)
    );
CREATE TABLE Departments(
	Department_id int,
	Department_name varchar(100)
    );
CREATE TABLE Employees(
	Employee_id int,
	Employee_name varchar(50),
	Gender enum('M','F'),
    Age int,
    Hire_date date,
    Designation varchar(100),
    Department_id int,
    Location_id int,
    Salary decimal(10,2)
    );
    
ALTER TABLE Employees
ADD email varchar(100);
    
ALTER TABLE Employees
MODIFY Designation varchar(200);

ALTER TABLE Employees
DROP COLUMN Age;

ALTER TABLE Employees
RENAME COLUMN Hire_date to Date_of_Joining;

RENAME TABLE Departments to Departments_Info;
RENAME TABLE Location to Locations;

SELECT * FROM Departments_Info;
SELECT * FROM Locations;
SELECT * FROM Employees;

TRUNCATE TABLE Employees;

DROP TABLE Employees;
DROP DATABASE employees;

DROP DATABASE IF EXISTS employees;
CREATE DATABASE employees;
USE employees;

CREATE TABLE Location (
	Location_Id int AUTO_INCREMENT PRIMARY KEY,
    Location_Name varchar(30) NOT NULL UNIQUE
    );
    
CREATE TABLE Departments (
    Department_Id int PRIMARY KEY,
    Department_Name varchar(100) NOT NULL UNIQUE
    );
CREATE TABLE Employees(
	Emp_Id int PRIMARY KEY,
    Emp_Name varchar(100) NOT NULL,
    Gender CHAR(1) CHECK(Gender in ('M','F')),
    Age int CHECK(Age>=18),
    Hire_Date DATE DEFAULT (CURRENT_DATE()),
    Department_Id int,
    Location_Id int,
    FOREIGN KEY (Department_Id)
    REFERENCES Departments(Department_Id),
    FOREIGN KEY (Location_Id)
    REFERENCES Location(Location_Id)
    );
    
    

    






