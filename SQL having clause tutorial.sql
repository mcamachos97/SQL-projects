/* Having Clause*/

Select JobTitle, AVG (Salary)
From EmployeeDemographics
Join EmployeeSalary
	On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
	Group By JobTitle
	Having Avg (Salary) > 45000
	Order By Avg (Salary) desc
	

	