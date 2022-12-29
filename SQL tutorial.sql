--CREATE TABLE EmployeeDemographics
--(EmployeeID int,
--FirstName varchar(50),
--LastName varchar(50),
--Age int,
--Gender varchar(50)
--)


  --INSERT INTO EmployeeDemographics VALUES
  --(1001, 'Miguel', 'Camacho', 25, 'Male'),
  --(1002, 'Lilia', 'Villanueva', 25, 'Female'),
  --(1003, 'Pam', 'Beasley', 30, 'Female'),
  --(1004, 'Dwight', 'Schrute', 29, 'Male'),
  --(1005, 'Toby', 'Flenderson', 32, 'Male'),
  --(1006, 'Angela', 'Martin', 31, 'Female'),
  --(1007, 'Michael', 'Scott', 32, 'Male'),
  --(1008, 'Stanley', 'Morgan', 38, 'Male'),
  --(1009, 'Meredith', 'Palmer', 32, 'Female')

  --SELECT *
  --FROM [SQL tutorial].dbo.EmployeeSalary

  --WHERE Statment
  
  --=, <>, <, >, And, Or, Like, Null, Not Null, In
--*/

/*
Gruop By, Order By
*/
Select *
From EmployeeDemographics
Order by 4 desc

--Select Gender, count (Gender) As CountGender
--From EmployeeDemographics
--Where Age> 31
--Group by Gender
--Order by CountGender Desc
