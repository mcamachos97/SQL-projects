/* String Functions - TRIM, LTRIM, RTRIM, Replace, Substring, Upper, Lower
*/

-- Drop table EmployeeErrors;
Drop table If  exists EmployeeErrors
Create table EmployeeErrors (
EmployeeID varchar(50),
FirstName varchar(50),
LastName varchar(50)
)

Insert into EmployeeErrors Values
('  1001', 'Jimbo', 'Halbert'),
('1002  ', 'Pamela', 'Beasley'),
('1005', 'TOby', 'Flenderson - Fired')

Select *
From EmployeeErrors

--Using Trim, LTRIM, RTRIM

Select EmployeeID, Trim (EmployeeID) as IDTRIM
From EmployeeErrors
Select EmployeeID, LTrim (EmployeeID) as IDTRIM
From EmployeeErrors
Select EmployeeID, RTrim (EmployeeID) as IDTRIM
From EmployeeErrors

--Using Replace 

Select LastName, REPLACE (LastName, '- Fired','') as LastNamefixed
From EmployeeErrors

-- Using Substring

Select err.FirstName, Substring(err.FirstName,1,3), dem.FirstName, Substring(dem.FirstName,1,3) 
From EmployeeErrors err
Join [SQL tutorial].dbo.EmployeeDemographics dem
On Substring(err.FirstName,1,3) = Substring(dem.FirstName,1,3) 


--Using Upper and Lower

Select FirstName, Lower(FirstName)
From EmployeeErrors

Select FirstName, Upper(FirstName)
From EmployeeErrors