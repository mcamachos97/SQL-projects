/* Subqueries: Subqueries (in the select, From, and Where Statment*/

Select *
From EmployeeSalary

-- Subquery in Select

Select EmployeeID, Salary, (Select Avg(Salary) From EmployeeSalary) as 'All Avg Salary'
From EmployeeSalary

-- How to do it with Partition By

Select EmployeeID, Salary, Avg(Salary) over() as 'All Avg Salary'
From EmployeeSalary

-- Why it dosen´t work with group by

Select EmployeeID, Salary, Avg(Salary)  as 'All Avg Salary'
From EmployeeSalary
Group by EmployeeID,Salary
Order By EmployeeID

-- Subquery in From  (No recomienda usarlo)

Select a.EmployeeID, [All Avg Salary]
From (Select EmployeeID, Salary, Avg(Salary) over() as 'All Avg Salary'
      From EmployeeSalary) a

-- Subquery in Where

Select *
From EmployeeSalary
Where EmployeeID in (
      Select EmployeeID
	  From EmployeeDemographics
	  Where Age>30)
