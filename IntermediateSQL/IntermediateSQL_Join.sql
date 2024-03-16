/* 
Inner Joins, Full/left/right Outer Joins
*/
/* insert random data
INSERT INTO practiceSQL.EmployeeDemographics
VALUES
(NULL, 'Holly', 'Flax', NULL, NULL),
(1013, 'Darryl', 'Phibin', NULL, 'Male');
*/
/*
INSERT INTO practiceSQL.EmployeeSalary
VALUES
(1010, NULL, 47000),
(NULL, 'Salesman', 43000);
*/



SELECT *
FROM practiceSQL.EmployeeDemographics;

SELECT *
FROM practiceSQL.EmployeeSalary;

# Inner join on EmployeeID

SELECT * 
FROM practiceSQL.EmployeeDemographics
Inner Join practiceSQL.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;



# Left Join
SELECT * 
FROM practiceSQL.EmployeeDemographics
LEFT JOIN practiceSQL.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

# Right JOIN
SELECT *
FROM practiceSQL.EmployeeDemographics
Right Join practiceSQL.EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

# Full Outer Join - which is not supported at MySQL
/*
SELECT * 
FROM practiceSQL.EmployeeDemographics
FULL OUTER JOIN practiceSQL.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;
*/
# Similar to FULL OUTER JOIN
SELECT *
FROM practiceSQL.EmployeeDemographics
LEFT JOIN practiceSQL.EmployeeSalary 
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
UNION
SELECT *
FROM practiceSQL.EmployeeDemographics
RIGHT JOIN practiceSQL.EmployeeSalary 
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

# Join combining with WHERE and Order
SELECT * 
FROM practiceSQL.EmployeeDemographics
INNER JOIN practiceSQL.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE FirstName <> 'Michael'
Order By Salary Desc;


