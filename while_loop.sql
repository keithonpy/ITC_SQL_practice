# insert random value into table
SHOW databases;
USE test_db;
SHOW TABLES;
SELECT * from Students;

DROP TABLE IF EXISTS calendars;

CREATE TABLE calendars(
    date DATE PRIMARY KEY,
    month INT NOT NULL,
    quarter INT NOT NULL,
    year INT NOT NULL
);
DROP PROCEDURE loadData;
DELIMITER $$

CREATE PROCEDURE createData(
    number INT
)
BEGIN
    
    DECLARE counter INT DEFAULT 0;

    WHILE counter <= number DO
        INSERT INTO Students (stdno, fname, lname) 
        VALUES (counter, RAND(), RAND());
        
		SET counter = counter + 1;
    END WHILE;

END$$

DELIMITER ;

CALL createData(100);

select * from Students;
