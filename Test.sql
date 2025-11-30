use PW;

create table Employees
(Empid int,
EmpName varchar(20),
Department varchar(25),
City char(15),
Salary int,
HireDate int);

select * from Employees;

insert into Employees values
(101,"Rahul Mehta","Sales","Delhi",55000,2020-04-12),
(102,"Priya Shrama","HR","Mumbai",62000,2019-09-25),
(103,"Aman Singh","IT","Bengaluru",72000,2021-03-10),
(104,"Neha Patel","Sales","Delhi",48000,2022-01-14),
(105,"Karan Joshi","Marketing","Pune",45000,2018-07-22),
(106,"Divya Nair","IT","Chennai",81000,2019-12-11),
(107,"Raj Kumar","HR","Delhi",60000,2020-05-28),
(108,"Simran Kaur","Finance","Mumbai",58000,2021-08-03),
(109,"Arjun Reddy","IT","Hyderabad",70000,2022-02-18),
(110,"Ankali Das","Sales","Kolkata",51000,2023-01-15);

select * from Employees;

##Question 1 : Show employees working in either the ‘IT’ or ‘HR’ departments.

select * from Employees
where Department in("IT","HR");

##Retrieve employees whose department is in ‘Sales’, ‘IT’, or ‘Finance’.

select EmpName,Department from Employees
where Department in("Sales","IT","Finance");

##Display employees whose salary is between ₹50,000 and ₹70,000

SELECT EmpName,Salary
FROM Employees
WHERE Salary BETWEEN 50000 AND 70000;

##List employees whose names start with the letter ‘A’.

select * from Employees
where EmpName like "A%";

##Find employees whose names contain the substring ‘an’.

SELECT *
FROM Employees
WHERE EmpName like '%an%';

##Show employees who are from ‘Delhi’ or ‘Mumbai’ and earn more than ₹55,000.

select EmpName,City,Salary
from Employees
where City in("Delhi","Mumbai")
and Salary > 55000;


## Display all employees except those from the ‘HR’ department

SELECT *
FROM Employees
WHERE NOT Department = 'HR';


##Get all employees hired between 2019 and 2022, ordered by HireDate (oldest first)

select EmpName,HireDate
from Employees
where HireDate between "2019-01-01" and "2022-12-31"
order by HireDate ASC;

