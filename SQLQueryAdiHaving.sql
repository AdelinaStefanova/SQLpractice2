SELECT JobTitle, COUNT(Jobtitle) AS CountJobTitle
FROM EmployeeDemographics AS ED
JOIN EmployeeSalary AS ES
	ON ED.EmployeeID = ES.EmployeeID
GROUP BY JobTitle 
HAVING COUNT(JobTitle) > 1

SELECT JobTitle, AVG(Salary)
FROM EmployeeDemographics AS ED
JOIN EmployeeSalary AS ES
	ON ED.EmployeeID = ES.EmployeeID
GROUP BY JobTitle 
HAVING AVG(Salary) > 45000
ORDER BY AVG(Salary)