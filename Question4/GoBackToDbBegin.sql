-- [ https://dev.mysql.com/doc/refman/8.0/en/savepoint.html ] (markdown-formatted):
-- `ROLLBACK [WORK] TO [SAVEPOINT] *identifier*`.
SET autocommit = 0;
START TRANSACTION READ WRITE;
-- Savepoints must be made within a transaction, apparently.
SAVEPOINT db_begin;
INSERT INTO poly_college_db.new_table (full_name)
VALUES ("Brahvim"),
    ("Shivam"),
    ("fake person");
-- Roll-back before the commit *happens*!
ROLLBACK TO db_begin;
-- This does basically nothing,
COMMIT;
-- ...so I assume rollbacks must be useful when looping to undo.
SELECT *
FROM poly_college_db.new_table;
-- DROP TABLE IF EXISTS poly_college_db.new_table;
SET autocommit = 1;