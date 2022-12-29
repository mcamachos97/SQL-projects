/* Temp Tables */

Create table #temp_Employee
(
EmployeeID int,
JobTitle varchar(50),
Salary int
)
Select *
From #temp_Employee 
Insert into #temp_Employee Values (
'1001', 'HR', '45000' )

Insert into #temp_Employee
select *
From [SQL tutorial].dbo.EmployeeSalary

Drop table If Exists #temp_Employee2

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
From #Temp_Employee2