SHOW TABLES;
SHOW DATABASES;

# DQL: Data Query Language
# allows you to get and organise data from a database


# Fetch all data from a Table
SELECT * from Students;



/* ALTER TABLE Students
ADD COLUMN Age int; */

/*UPDATE Students 
SET Age = 31
WHERE stdno = 1234; */

# select data with conditions
SELECT * from Students
WHERE stdno > 1000
AND Age <= 40
LIMIT 2;


# COUNT, MAX, MIN
SELECT COUNT(*) AS count from Students;

/*
ALTER TABLE Students
ADD COLUMN gender varchar(10);

UPDATE Students
SET gender = "male"
where stdno < 1236;

UPDATE Students
SET gender = "female"
where stdno > 1235;
*/


# Calculate the number of age for each gender type
SELECT gender, AVG(age) as age_avg
FROM Students
GROUP BY gender;

