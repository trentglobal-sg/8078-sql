-- INSERT is to add new rows (the "C"reate of the CRUD)
INSERT INTO students (first_name, dob, parent_id) values ("Johnny", "2026-01-24", 1);

-- INSERT more than one row
INSERT INTO parents (first_name, last_name, email) 
       VALUES ("John", "Wick", "johnwick@asd.com"),
              ("Chua Kang", "Phua", "pck@asd.com");

-- UPDATE <TABLE> allows us to update one or more rows in the table
-- UPATE <TABLE>
--   SET <val1>=<newValue1>, <val2>=<newValue2> ....
--   WHERE <cond>
UPDATE parents SET email="marysue@asd.com" WHERE parent_id=1;

UPDATE students SET first_name="David", last_name="Sue" WHERE student_id = 3;

-- DELETE
-- DELETE FROM <table name> WHERE <cond>
DELETE FROM students WHERE student_id=1;