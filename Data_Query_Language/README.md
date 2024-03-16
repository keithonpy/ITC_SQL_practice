# Data Query Language

## Fetch data from a table
```
SELECT [*, col1, col2, ...] FROM [tablename]
```

## Filter data from a table with conditions
```
SELECT * FROM [tablename]
WHERE [col] [=, <, >, <=, >=, !<, !>, <>, !=] [value]
[AND, OR] ...
[LIMIT]
```

## Simple Computation on the table
```
SELECT [count([col]), max([col]), min([col]), sum([col]), avg([col])] FROM [tablename]
```

## Simple Computation on the table with groupby
```
SELECT [count([col]), max([col]), min([col]), sum([col]), avg([col])] FROM [tablename]
GROUP BY [col]
```

## Aggregate and Filter (Fetch data from Group by table)
```
SELECT *, count(*) AS [col_name]
FROM [tablename]
GROUP BY [col]
HAVING count(*) [>, <] [condition]
```

## Sort the fetched records
```
SELECT [*, col1, col2, ...] FROM [tablename]
[WHERE]
ORDER BY [col1, col2, ...] [ASC|DESC]
```

## Fetch and Join two tables
```
SELECT * FROM [table1]
[INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL [OUTER] JOIN] [table2]
ON [table1.col] = [table2.col]
```

