SELECT *
FROM EmployeeDemographics;

SELECT FirstName
FROM EmployeeDemographics;

SELECT FirstName, LastName
FROM EmployeeDemographics;


SELECT TOP 5 *
FROM EmployeeDemographics;

SELECT DISTINCT (EmployeeID)
FROM EmployeeDemographics;

SELECT DISTINCT (Gender)
FROM EmployeeDemographics;

SELECT COUNT(LastName)
FROM EmployeeDemographics;

SELECT COUNT(LastName) AS LastNameCount
FROM EmployeeDemographics;

SELECT *
FROM EmployeeSalary;

SELECT MAX(Salary)
FROM EmployeeSalary;

SELECT MIN(Salary)
FROM EmployeeSalary;

SELECT AVG(Salary)
FROM EmployeeSalary;

SELECT *
FROM [TSQL Adi].dbo.EmployeeSalary;

SELECT *
FROM EmployeeDemographics
WHERE FirstName = 'Jim';

SELECT *
FROM EmployeeDemographics
WHERE FirstName <> 'Jim';

SELECT *
FROM EmployeeDemographics
WHERE Age > 30;

SELECT *
FROM EmployeeDemographics
WHERE Age >= 30;

SELECT *
FROM EmployeeDemographics
WHERE Age <= 32 AND Gender = 'Male';

SELECT *
FROM EmployeeDemographics
WHERE Age <= 32 OR Gender = 'Male';

SELECT *
FROM EmployeeDemographics
WHERE LastName like 'S%';

SELECT *
FROM EmployeeDemographics
WHERE LastName like '%S%';

SELECT *
FROM EmployeeDemographics
WHERE LastName like 'S%o%';

SELECT *
FROM EmployeeDemographics
WHERE LastName like 'S%ott%';

SELECT *
FROM EmployeeDemographics
WHERE LastName IS NOT NULL;

SELECT *
FROM EmployeeDemographics
WHERE FirstName = 'Jim';

SELECT *
FROM EmployeeDemographics
WHERE FirstName = 'Jim' OR FirstName = 'Michael';

SELECT *
FROM EmployeeDemographics
WHERE FirstName IN ( 'Jim', 'Michael');

SELECT DISTINCT (Gender)
FROM EmployeeDemographics;

SELECT Gender, COUNT(Gender)
FROM EmployeeDemographics
GROUP BY Gender;

SELECT Gender, Age, COUNT(Gender)
FROM EmployeeDemographics
GROUP BY Gender, Age;

SELECT Gender, COUNT(Gender)
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender, Age;

SELECT Gender, COUNT(Gender) AS CountGender
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
ORDER BY CountGender;

SELECT Gender, COUNT(Gender) AS CountGender
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
ORDER BY CountGender DESC;

SELECT *
FROM EmployeeDemographics
ORDER BY Age DESC;

SELECT *
FROM EmployeeDemographics
ORDER BY Age, Gender;


SELECT *
FROM EmployeeDemographics
ORDER BY Age DESC, Gender DESC;

SELECT *
FROM EmployeeDemographics
ORDER BY Age DESC, Gender ASC;

SELECT *
FROM EmployeeDemographics
ORDER BY 4 DESC, 5 ASC;


