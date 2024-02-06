SHOW DATABASES;
USE test_db;


# DDL: Data Definition Language,
# describing data and its relationships in a database


# create a table named Students
CREATE TABLE Students(
	stdno int PRIMARY KEY,
    fname varchar(255) NOT NULL,
    lname varchar(255)
);


# Add new column in the table Students
ALTER TABLE Students
ADD email varchar(255);


# Modifying the data type of existing column
ALTER TABLE Students
MODIFY COLUMN lname varchar(512);

# drop column in table
ALTER TABLE Students
DROP COLUMN email;


/*
INSERT INTO Students(Stdno, fname, lname, Age)
VALUES (1235, "Gsldk", "adf", 35);
INSERT INTO Students(Stdno, fname, lname, Age)
VALUES (1236, "dddk", "ddf", 37);
INSERT INTO Students(Stdno, fname, lname, Age)
VALUES (1237, "dk", "cHdek", 37);


SELECT * from Students;
*/


# remove all data from table
TRUNCATE TABLE Students;

# drop the tables
DROP TABLE Students;

SHOW TABLES;
SHOW DATABASES;



