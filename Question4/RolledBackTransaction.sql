START TRANSACTION READ WRITE;
INSERT INTO poly_college_db.new_table (full_name)
VALUES ("spammer-1"),
    ("Spammer2"),
    ("Spammer_3");
ROLLBACK;
SELECT *
FROM poly_college_db.new_table;
-- DROP TABLE IF EXISTS poly_college_db.new_table;