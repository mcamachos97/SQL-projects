/* Case Statments */

--Select FirstName,LastName,Age,
--CASE 
--	When Age > 37 Then 'Abuelo'
--	When Age > 30 Then 'Old'
--	When Age Between 27 and 30 Then 'Young' 
--	Else 'Baby'
--End
--From EmployeeDemographics
--Where Age is Not Null
--Order by Age 

Select FirstName,LastName,JobTitle,Salary,
Case
	When JobTitle = 'Salesman' then Salary + (Salary * 0.10)
	When JobTitle = 'Accountant' Then Salary + (Salary * 0.05)
	When JobTitle = 'HR' Then Salary + (Salary * 0.0001)
	Else Salary + (Salary * 0.03)
End As SalaryAfterRaise		
From EmployeeDemographics
Join EmployeeSalary
	On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
Where Age is Not Null
Order by Age 