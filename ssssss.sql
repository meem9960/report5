CREATE DATABASE ExampleDB;
USE ExampleDB;

-- Create Table 1
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100),
    Department VARCHAR(100)
);

-- Insert values into Employees table
INSERT INTO Employees (EmployeeID, Name, Department)
VALUES
    (1, 'SNEHA', 'Sales'),
    (2, 'RAHUL', 'Marketing'),
    (3, 'ATIKA', 'HR');

-- Create Table 2
CREATE TABLE Salaries (
    EmployeeID INT PRIMARY KEY,
    Salary DECIMAL(10, 2)
);

-- Insert values into Salaries table
INSERT INTO Salaries (EmployeeID, Salary)
VALUES
    (1, 50000.00),
    (2, 60000.00),
    (3, 55000.00);

-- Natural Join
SELECT * FROM Employees NATURAL JOIN Salaries;

-- Inner Join
SELECT * FROM Employees INNER JOIN Salaries ON Employees.EmployeeID = Salaries.EmployeeID;

-- Left Join
SELECT * FROM Employees LEFT JOIN Salaries ON Employees.EmployeeID = Salaries.EmployeeID;

-- Right Join
SELECT * FROM Employees RIGHT JOIN Salaries ON Employees.EmployeeID = Salaries.EmployeeID;