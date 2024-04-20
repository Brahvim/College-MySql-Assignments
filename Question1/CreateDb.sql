-- Creating the DB and a table in it!:
CREATE SCHEMA test_db;
USE test_db;
CREATE TABLE test_table(name VARCHAR(64) PRIMARY KEY);
-- Putting stuff into it:
INSERT INTO test_table
VALUES('Brahvim');
DESCRIBE test_table;
SELECT *
FROM test_table;