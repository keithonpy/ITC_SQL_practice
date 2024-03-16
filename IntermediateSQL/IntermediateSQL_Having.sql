SELECT JobTitle, COUNT(JobTitle)
FROM practiceSQL.EmployeeDemographics
JOIN
practiceSQL.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JObTitle
HAVING COUNT(JobTitle) > 1;

SELECT JobTitle, AVG(Salary) AS AVGSalary
FROM practiceSQL.EmployeeDemographics
JOIN
practiceSQL.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING AVGSalary > 40000
ORDER BY AVGSalary;