SELECT *
FROM practiceSQL.EmployeeDemographics
LEFT JOIN practiceSQL.EmployeeSalary 
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
UNION ALL
SELECT *
FROM practiceSQL.EmployeeDemographics
RIGHT JOIN practiceSQL.EmployeeSalary 
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;