# Data Definition Language

## Create a Table
```
CREATE TABLE [tablename](
  [col1] INT [PRIMARY KEY],
  [col2] VARCHAR(255) [NOT NULL],
  [col3] VARCHAR(255), ... 
)
```

## Add a new column to the table
```
ALTER TABLE [tablename]
ADD [col] [datatype]
```

## Modify the data type of the existing column
```
ALTER TABLE [tablename]
ALTER COLUMN [col] [datatype]
```

## Remove an existing column from the table
```
ALTER TABLE [tablename]
DROP COLUMN [col]
```

## Remove all the data from the table
```
TRUNCATE TABLE [tablename]
```

## Drop a table
```
DROP TABLE [tablename]
```
