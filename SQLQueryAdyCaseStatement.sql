SELECT FirstName, LastName, Age,
CASE 
	WHEN Age > 30 THEN 'Old'
	ELSE 'Young'
	END
FROM [TSQL Adi].dbo.EmployeeDemographics
WHERE Age is NOT NULL
ORDER BY Age;

SELECT FirstName, LastName, Age,
CASE 
	WHEN Age > 30 THEN 'Old'
	WHEN Age BETWEEN 27 AND 30 THEN 'Young'
	ELSE 'Baby'
	END
FROM [TSQL Adi].dbo.EmployeeDemographics
WHERE Age is NOT NULL
ORDER BY Age;

SELECT FirstName, LastName, Age,
CASE 
	WHEN Age = 38 THEN 'Stanley'
	WHEN Age > 30 THEN 'Old'	
	ELSE 'Baby'
	END
FROM [TSQL Adi].dbo.EmployeeDemographics
WHERE Age is NOT NULL
ORDER BY Age;

SELECT FirstName, LastName, JobTitle, Salary
FROM EmployeeDemographics AS ED
JOIN EmployeeSalary AS ES
	ON ED.EmployeeID = ES.EmployeeID;

SELECT FirstName, LastName, JobTitle, Salary,
CASE
	WHEN JobTitle = 'Salesman' THEN Salary + (Salary * 0.10)
	WHEN JobTitle = 'Accountant' THEN Salary + (Salary * 0.05)
	WHEN JobTitle = 'HR' THEN Salary + (Salary * 0.000001)
	ELSE Salary + (Salary * 0.03)
END AS [Salary After Raise]
FROM EmployeeDemographics AS ED
JOIN EmployeeSalary AS ES
	ON ED.EmployeeID = ES.EmployeeID;
