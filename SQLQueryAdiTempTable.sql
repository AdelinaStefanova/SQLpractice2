CREATE TABLE #temp_Employee 
(EmployeeID int,
JobTitle varchar(100),
Salary int)

SELECT *
FROM #temp_Employee

INSERT INTO #temp_Employee VALUES
('1001', 'HR', '45000')

INSERT INTO #temp_Employee
SELECT *
FROM [TSQL Adi]..EmployeeSalary


DROP TABLE IF EXISTS #Temp_Employee2   -- <- trick
CREATE TABLE #Temp_Employee2 (
JobTitle varchar (50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int );

INSERT INTO #Temp_Employee2
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
FROM EmployeeDemographics demogr
JOIN EmployeeSalary sal
	ON demogr.EmployeeID=sal.EmployeeID
GROUP BY JobTitle;

SELECT *
FROM #Temp_Employee2;


