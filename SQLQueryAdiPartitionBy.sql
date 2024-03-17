SELECT FirstName, LastName, Gender, Salary 
,COUNT(Gender) OVER (PARTITION BY Gender) AS [Total Gender]
FROM EmployeeDemographics Demogr
JOIN EmployeeSalary Sal
	ON Demogr.EmployeeID = Sal.EmployeeID;

SELECT FirstName, LastName, Gender, Salary 
,COUNT(Gender) -- OVER (PARTITION BY Gender) AS [Total Gender]
FROM EmployeeDemographics Demogr
JOIN EmployeeSalary Sal
	ON Demogr.EmployeeID = Sal.EmployeeID
	GROUP BY FirstName, LastName, Gender, Salary;

