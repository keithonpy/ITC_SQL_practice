/* 
Group By, Order By
*/

USE practiceSQL;

# only return the first unique value
SELECT DISTINCT(Gender) 
From EmployeeDemographics;

# `Group by` could row up all data into one row
SELECT Gender, COUNT(Gender) as 'Count'
From EmployeeDemographics
Group by Gender;

# `Group by` more than one columns
SELECT Gender, Age, count(Gender) AS 'Count'
From EmployeeDemographics
Group by Gender, Age;

# `Group by` include WHERE statement
SELECT Gender, Count(Gender) As 'Count'
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender;

# `order by` align the table in ascending and descending order
SELECT *
FROM EmployeeDemographics
ORDER BY Age;

SELECT *
FROM EmployeeDemographics
ORDER BY Age DESC;

# multiple ordre columns
SELECT * 
FROM EmployeeDemographics
ORDER BY Age desc, Gender;

# `order by` column with number
SELECT * 
FROM EmployeeDemographics
ORDER BY 4 desc, 5;

