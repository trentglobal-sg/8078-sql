-- create a database in SQL
-- are commands in SQL case sensitive?
-- ans: no
CREATE DATABASE swimming_coach;

-- show all the databases
SHOW DATABASES;

-- switch database
use swimming_coach;

-- syntax to create a table
-- CREATE TABLE <name of table>  ( 
--    <name of col 1> <data type of col 1> <options>,
--    <name of col 2> <data type of col 2> <options>,
--    <name of col n> <data type of col n> <options>
--  ) ENGINE = INNODB;

CREATE TABLE parents (
    parent_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) NOT NULL
) ENGINE = INNODB;

-- see all the tables in a database
SHOW TABLES;

-- see the columns in one specific tale
DESCRIBE parents;

CREATE TABLE locations (
    location_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL
) ENGINE = INNODB;

-- row manipulations is done by DML 
-- add a new row: INSERT INTO <table> (<col1>, <col2>) VALUES (value1, value2...)
INSERT INTO parents (first_name, last_name) VALUES ("Mary", "Sue");

-- show all rows from a table (DQL)
SELECT * FROM parents;

-- To create a table with FK
-- Step 1: Create the students table
CREATE TABLE students (
    student_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45),
    swimming_level TINYINT UNSIGNED,
    dob DATETIME NOT NULL,
    parent_id INT UNSIGNED NOT NULL
) ENGINE = INNODB;

ALTER TABLE students
    ADD CONSTRAINT fk_parents_students
    FOREIGN KEY (parent_id) REFERENCES parents(parent_id);

INSERT INTO students (first_name, last_name, swimming_level, dob, parent_id)
 VALUES ("John", "Sue", 1, "2022-01-24", 1);

 INSERT INTO students (first_name, last_name, swimming_level, dob, parent_id)
 VALUES ("Peter", "Barker", 10, "1990-01-24", 99);

 -- remove a column from a table
 ALTER TABLE students DROP COLUMN swimming_level;

 -- add a column
 -- add an email address column to the parents
 ALTER TABLE parents ADD COLUMN email VARCHAR(255);

 -- altering a column
 -- eg: make the email column in the parents table NOT NULL (i.e complusory)
 ALTER TABLE students MODIFY COLUMN last_name VARCHAR(100);