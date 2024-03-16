##########################Practice#############################
####link: https://learnsql.com/blog/sql-practice-exercises/####
###############################################################

# create a table distribution_companies
create database movie;
USE movie;

DROP TABLE if exists distribution_companies;

# create tables

CREATE TABLE distribution_companies (
    id INT PRIMARY KEY,
    company_name VARCHAR(255) NOT NULL
);

CREATE TABLE movies (
    id INT PRIMARY KEY,
    movie_title VARCHAR(255) NOT NULL,
    imdb_rating DECIMAL(2, 1) NOT NULL,
    year_released INT NOT NULL,
    budget DECIMAL(10, 2),
    box_office DECIMAL(10, 2),
    distribution_company_id INT,
    language VARCHAR(255) NOT NULL,
    FOREIGN KEY (distribution_company_id) REFERENCES distribution_companies(id)
);

INSERT INTO distribution_companies (id, company_name) VALUES
(1, 'Columbia Pictures'),
(2, 'Paramount Pictures'),
(3, 'Warner Bros. Pictures'),
(4, 'United Artists'),
(5, 'Universal Pictures'),
(6, 'New Line Cinema'),
(7, 'Miramax Films'),
(8, 'Produzioni Europee Associate'),
(9, 'Buena Vista'),
(10, 'StudioCanal');


INSERT INTO movies (id, movie_title, imdb_rating, year_released, budget, box_office, distribution_company_id, language) VALUES
(1, 'The Shawshank Redemption', 9.2, 1994, 25.00, 73.30, 1, 'English'),
(2, 'The Godfather', 9.2, 1972, 7.20, 291.00, 2, 'English'),
(3, 'The Dark Knight', 9.0, 2008, 185.00, 1006.00, 3, 'English'),
(4, 'The Godfather Part II', 9.0, 1974, 13.00, 93.00, 2, 'English, Sicilian'),
(5, '12 Angry Men', 9.0, 1957, 0.34, 2.00, 4, 'English'),
(6, "Schindler's List", 8.9, 1993, 22.00, 322.20, 5, 'English, German, Yiddish'),
(7, 'The Lord of the Rings: The Return of the King', 8.9, 2003, 94.00, 1146.00, 6, 'English'),
(8, 'Pulp Fiction', 8.8, 1994, 8.50, 213.90, 7, 'English'),
(9, 'The Lord of the Rings: The Fellowship of the Ring', 8.8, 2001, 93.00, 898.20, 6, 'English'),
(10, 'The Good, the Bad and the Ugly', 8.8, 1966, 1.20, 38.90, 8, 'English, Italian, Spanish');

select * from distribution_companies;

ALTER TABLE distribution_companies ADD COLUMN id_22 INT;
UPDATE distribution_companies SET id_22 = id * 2 WHERE id IS NOT NULL;
select * from distribution_companies ;

ALTER TABLE distribution_companies
DROP COLUMN id_22;

# Update table 
UPDATE distribution_companies
SET company_name = "Miramax"
where id = 7;

ALTER TABLE distribution_companies
CHANGE COLUMN id2 person_age int;



SELECT * from movies;

SELECT * from movies
ORDER BY year_released DESC;


SELECT distribution_company_id from movies
GROUP BY distribution_company_id;

# create id 2 
ALTER TABLE distribution_companies
ADD COLUMN id2 int;

ALTER TABLE distribution_companies
DROP COLUMN id2;

SELECT *, id *2 AS id2 from distribution_companies;

UPDATE distribution_companies
SET id2 = id * 2
WHERE id is not NULL;

ALTER TABLE movies
ADD COLUMN distribution_company_id2 int;


CREATE TABLE users(
id int, username varchar(255)
);

INSERT INTO users
VALUES 
(1, "aaa"), 
(2, "bbb"),
(3, "ccc"), 
(4, "ddd");


SELECT * from movies;

SELECT * from users u
join movies m 
ON u.id = m.id;


UPDATE movies
SET distribution_company_id2 = distribution_company_id * 2 
where distribution_company_id is not null;


SELECT * from distribution_companies;

# Exercise 1: Select all columns from the table
SELECT *
FROM distribution_companies;

# Exercise 2: Selecting a Few Columns From a Table

SELECT
  movie_title,
  imdb_rating,
  year_released
FROM movies;

# Exercise 3: Selecting a Few Columns and Filtering Numeric Data in WHERE
SELECT
  movie_title,
  box_office
FROM movies
WHERE box_office > 300;

# Exercise 4: Selecting a Few Columns and Filtering Text Data in WHERE
SELECT
  movie_title,
  imdb_rating,
  year_released
FROM movies
WHERE movie_title LIKE '%Godfather%';

# Exercise 5: Selecting a Few Columns and Filtering Data Using Two Conditions in WHERE
SELECT
  movie_title,
  imdb_rating,
  year_released
FROM movies
WHERE year_released < 2001 AND imdb_rating > 9;

# Exercise 6: Filtering Data Using WHERE and Sorting the Output
SELECT
  movie_title,
  imdb_rating,
  year_released
FROM movies
WHERE year_released > 1991
ORDER BY year_released ASC;

# Exercise 7: Grouping Data by One Column
SELECT
  language,
  COUNT(*) AS number_of_movies
FROM movies
GROUP BY language;

# Exercise 8: Grouping Data by Multiple Columns

SELECT
  year_released,
  language,
  COUNT(*) AS number_of_movies
FROM movies
GROUP BY year_released, language
ORDER BY year_released ASC;

# Exercise 9: Filtering Data After Grouping
SELECT
  language,
  AVG(budget) AS movie_budget
FROM movies
GROUP BY language
HAVING AVG(budget) > 50;

# Exercise 10: Selecting Columns From Two Tables
SELECT
  movie_title,
  company_name
FROM distribution_companies dc
JOIN movies m
ON dc.id = m.distribution_company_id;


