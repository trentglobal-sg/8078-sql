INSERT INTO schools (name) 
    VALUES ("School of Engineering");

INSERT INTO class (class_code, description, school_id)
 VALUES ("ENG101", "Engineer 101", 1);

UPDATE class SET class_code = "ENG001" WHERE class_id=1;

DELETE FROM class WHERE class_id=1;