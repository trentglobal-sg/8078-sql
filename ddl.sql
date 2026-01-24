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