CREATE DATABASE school_management_system;

CREATE TABLE schools (
 school_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT, 
 name VARCHAR(100) NOT NULL
) ENGINE = INNODB;

CREATE TABLE class (
 class_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
 class_code VARCHAR(50) NOT NULL,
 description TEXT
) ENGINE = INNODB;

-- Put in the school_id
ALTER TABLE class ADD COLUMN school_id INT UNSIGNED NOT NULL;

ALTER TABLE class
    ADD CONSTRAINT fk_class_schools
    FOREIGN KEY (school_id) REFERENCES schools(school_id);

-- Modify an existing column
ALTER TABLE class
    MODIFY COLUMN class_code VARCHAR(100) NOT NULL;

CREATE TABLE test (
    test_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT 
) ENGINE = INNODB;

-- add a column
ALTER TABLE test ADD COLUMN foobar VARCHAR(100);

-- drop a column
ALTER TABLE test DROP COLUMN foobar;

-- drop a table
DROP TABLE test;