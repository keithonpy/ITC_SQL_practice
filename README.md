# SQL concept

## Keys

In SQL, "keys" refer to fields or combinations of fields within a database table that are used to uniquely identify a record within that table.

### Primary Key
Primary key is a column or a set of columns that uniquely identifies each row in a table. It must contain **UNIQUE** value and cannot have **NULL** value. Each table should have one and only one primary key.

### Foreign Key

A foreign key is a column or a set of columns in one table that refers to the primary key in another table. It establishes a link between two tables and enforces referential integrity.

### Surrogate Key

A surrogate key is a unique identifier assigned to each record in a database table, typically **by the database management system itself**.

```
# MySQL example
CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Gender VARCHAR(10)
);
```

```
# PostgreSQL example
CREATE TABLE Students (
    StudentID INT SERIAL PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Gender VARCHAR(10)
);

```


## Normalization



## JOINS

## GROUPBY

## ORDERBY
