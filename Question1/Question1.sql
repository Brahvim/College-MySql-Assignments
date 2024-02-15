-- Creating the DB and a table in it!:
CREATE SCHEMA test_db;
CREATE TABLE test_table(name TEXT PRIMARY KEY NOT NULL);

-- Putting stuff into it:
USE test_table;

INSERT INTO test_table VALUES('Brahvim');
