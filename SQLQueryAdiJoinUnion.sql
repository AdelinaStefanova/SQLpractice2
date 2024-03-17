SELECT *
FROM EmployeeDemographics AS ED
JOIN EmployeeSalary AS ES
ON ED.EmployeeID = ES.EmployeeID;
-- same ->
SELECT *
FROM [TSQL Adi].dbo.EmployeeDemographics AS ED
JOIN [TSQL Adi].dbo.EmployeeSalary AS ES
ON ED.EmployeeID = ES.EmployeeID;

--Insert into EmployeeDemographics VALUES
--(1011, 'Ryan', 'Howard', 26, 'Male'),
--(NULL, 'Holly','Flax', NULL, 'Male'),
--(1013, 'Darryl', 'Philbin', NULL, 'Male')

--Insert into EmployeeSalary VALUES
--(1010, NULL, 47000),
--(NULL, 'Salesman', 43000)

SELECT *
FROM [TSQL Adi].dbo.EmployeeDemographics AS ED
FULL OUTER JOIN [TSQL Adi].dbo.EmployeeSalary AS ES
ON ED.EmployeeID = ES.EmployeeID;

SELECT *
FROM [TSQL Adi].dbo.EmployeeDemographics AS ED
LEFT OUTER JOIN [TSQL Adi].dbo.EmployeeSalary AS ES
ON ED.EmployeeID = ES.EmployeeID;

SELECT *
FROM [TSQL Adi].dbo.EmployeeDemographics AS ED
RIGHT OUTER JOIN [TSQL Adi].dbo.EmployeeSalary AS ES
ON ED.EmployeeID = ES.EmployeeID;

SELECT FirstName, LastName, JobTitle, Salary
FROM [TSQL Adi].dbo.EmployeeDemographics AS ED
RIGHT OUTER JOIN [TSQL Adi].dbo.EmployeeSalary AS ES
ON ED.EmployeeID = ES.EmployeeID;

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM [TSQL Adi].dbo.EmployeeDemographics 
JOIN [TSQL Adi].dbo.EmployeeSalary 
ON EmployeeDemographics.EmployeeID = EmployeeSalary .EmployeeID;

SELECT EmployeeSalary.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM [TSQL Adi].dbo.EmployeeDemographics 
RIGHT JOIN [TSQL Adi].dbo.EmployeeSalary 
ON EmployeeDemographics.EmployeeID = EmployeeSalary .EmployeeID;

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM [TSQL Adi].dbo.EmployeeDemographics 
RIGHT JOIN [TSQL Adi].dbo.EmployeeSalary 
ON EmployeeDemographics.EmployeeID = EmployeeSalary .EmployeeID;


SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM [TSQL Adi].dbo.EmployeeDemographics 
LEFT JOIN [TSQL Adi].dbo.EmployeeSalary 
ON EmployeeDemographics.EmployeeID = EmployeeSalary .EmployeeID;

SELECT ES.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM [TSQL Adi].dbo.EmployeeDemographics AS ED
LEFT JOIN [TSQL Adi].dbo.EmployeeSalary AS ES
ON ED.EmployeeID = ES.EmployeeID;

SELECT *
FROM [TSQL Adi].dbo.EmployeeDemographics AS ED
FULL JOIN [TSQL Adi].dbo.EmployeeSalary AS ES
ON ED.EmployeeID = ES.EmployeeID;

SELECT ED.EmployeeID, FirstName, LastName,  Salary
FROM [TSQL Adi].dbo.EmployeeDemographics AS ED
JOIN [TSQL Adi].dbo.EmployeeSalary AS ES
ON ED.EmployeeID = ES.EmployeeID;

SELECT ED.EmployeeID, FirstName, LastName,  Salary
FROM [TSQL Adi].dbo.EmployeeDemographics AS ED
JOIN [TSQL Adi].dbo.EmployeeSalary AS ES
ON ED.EmployeeID = ES.EmployeeID
WHERE FirstName <> 'Michael'
ORDER BY Salary DESC;

SELECT JobTitle, Salary
FROM [TSQL Adi].dbo.EmployeeDemographics AS ED
JOIN [TSQL Adi].dbo.EmployeeSalary AS ES
ON ED.EmployeeID = ES.EmployeeID
WHERE JobTitle = 'Salesman';

SELECT JobTitle, AVG (Salary)
FROM [TSQL Adi].dbo.EmployeeDemographics AS ED
JOIN [TSQL Adi].dbo.EmployeeSalary AS ES
ON ED.EmployeeID = ES.EmployeeID
WHERE JobTitle = 'Salesman'
GROUP BY JobTitle;

--JOIN and UNION

SELECT *
FROM [TSQL Adi].dbo.EmployeeDemographics AS ED
FULL JOIN [TSQL Adi].dbo.EmployeeSalary AS ES
ON ED.EmployeeID = ES.EmployeeID;

--Table 1 Insert: 
--Insert into [TSQL Adi].dbo.EmployeeDemographics VALUES
--(1011, 'Ryan', 'Howard', 26, 'Male'),
--(NULL, 'Holly', 'Flax', NULL, NULL),
--(1013, 'Darryl', 'Philbin', NULL, 'Male')

--Create new table:
--CREATE TABLE [TSQL Adi].dbo.WareHouseEmployeeDemographics
--(EmployeeID int, 
--FirstName varchar(50), 
--LastName varchar(50), 
--Age int, 
--Gender varchar(50)
--)

--Add data to new table:
--INSERT INTO [TSQL Adi].dbo.WareHouseEmployeeDemographics VALUES
--(1013, 'Darryl', 'Philbin', NULL, 'Male'),
--(1050, 'Roy', 'Anderson', 31, 'Male'),
--(1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
--(1052, 'Val', 'Johnson', 31, 'Female')

SELECT *
FROM [TSQL Adi].dbo.EmployeeDemographics AS ED
FULL JOIN [TSQL Adi].dbo.WareHouseEmployeeDemographics AS WED
ON ED.EmployeeID = WED.EmployeeID;

SELECT *
FROM [TSQL Adi].dbo.EmployeeDemographics AS ED
UNION
SELECT *
FROM [TSQL Adi].dbo.WareHouseEmployeeDemographics AS WED;

SELECT *
FROM [TSQL Adi].dbo.EmployeeDemographics AS ED
UNION ALL
SELECT *
FROM [TSQL Adi].dbo.WareHouseEmployeeDemographics AS WED;

SELECT *
FROM [TSQL Adi].dbo.EmployeeDemographics AS ED
UNION ALL
SELECT *
FROM [TSQL Adi].dbo.WareHouseEmployeeDemographics AS WED
ORDER BY EmployeeID;

SELECT EmployeeID, FirstName, Age
FROM [TSQL Adi].dbo.EmployeeDemographics AS ED
UNION 
SELECT EmployeeID, JobTitle, Salary
FROM [TSQL Adi].dbo.EmployeeSalary AS ES
ORDER BY EmployeeID;

