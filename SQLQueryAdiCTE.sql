WITH CTE_Employee AS
(SELECT FirstName, LastName, Gender, Salary
, COUNT(gender) OVER (PARTITION BY Gender) AS [Total Gender]
, AVG(Salary) OVER (PARTITION BY Gender) AS [Avg Salary]
FROM EmployeeDemographics demogr
JOIN EmployeeSalary sal
	ON demogr.EmployeeID = sal.EmployeeID
WHERE Salary > '45000'
)
SELECT *
FROM CTE_Employee;

WITH CTE_Employee AS
(SELECT FirstName, LastName, Gender, Salary
, COUNT(gender) OVER (PARTITION BY Gender) AS [Total Gender]
, AVG(Salary) OVER (PARTITION BY Gender) AS [Avg Salary]
FROM EmployeeDemographics demogr
JOIN EmployeeSalary sal
	ON demogr.EmployeeID = sal.EmployeeID
WHERE Salary > '45000'
)
SELECT FirstName, [Avg Salary]
FROM CTE_Employee;