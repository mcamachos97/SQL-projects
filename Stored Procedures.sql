/*  Stored Procedures */

Create procedure Test
As 
Select *
From [SQL tutorial].dbo.EmployeeDemographics

Exec Test

Create Procedure Temp_Employee2
As
Create table #Temp_Employee2 (
JobTitle varchar(50),
EmployeesPerJob int,
AvgAge int,
Avgsalary int
)

Insert into #Temp_Employee2
Select JobTitle, Count(JobTitle), Avg(Age), Avg(salary)
From [SQL tutorial].dbo.EmployeeDemographics emp
Join [SQL tutorial].dbo.EmployeeSalary sal
on emp.EmployeeID = sal.EmployeeID
group by JobTitle

Select *
from #temp_Employee2

Exec Temp_Employee2 @JobTitle = 'Salesman'