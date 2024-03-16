SELECT FirstName, LastName, Age, 
CASE
	WHEN Age > 30 THEN 'Old'
    WHEN Age between 27 and 30 Then	'Young'
    else 'Baby'
End
As description
FROM practiceSQL.EmployeeDemographics
WHERE Age is not NULL
ORDER BY Age;

SELECT * 
FROM practiceSQL.EmployeeSalary;

SELECT FirstName, LastName, JobTitle, Salary,
CASE 
WHEN JobTitle = 'Salesman' THEN Salary * (1.1)
WHEN JobTitle = 'Accountant' THEN Salary * (1.05)
ELSE Salary * (1.03)
END
As SalaryAfterRaise
FROM practiceS	QL.EmployeeDemographics
JOIN
practiceSQL.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID; 