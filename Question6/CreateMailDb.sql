DROP DATABASE IF EXISTS mail_db;
CREATE DATABASE mail_db;
USE mail_db;
DROP TABLE IF EXISTS mail_db.mails;
CREATE TABLE mails(
    day DATE,
    bytes BIGINT,
    chron TIMESTAMP,
    src_user VARCHAR(8),
    dst_user VARCHAR(8),
    src_host VARCHAR(20),
    dst_host VARCHAR(20)
);
DESCRIBE mail_db.mails;
-- This will help actually record the length of new messages!:
-- ```sql
-- Defining a delimiter in advance to disallow the server from interpreting a `;` as the end of the trigger body!
-- DELIMITER //
-- We want a trigger that is run `BEFORE` an `INSERT` occurs for `mail_db.mails`.
-- CREATE TRIGGER find_mail_bytes BEFORE
-- INSERT ON mail_db.mails FOR EACH ROW -- ...and we want to update row-wise data.
--     BEGIN --  Makin' variables:
--     -- Here's an `INT` to hold the size of the message haha:
-- DECLARE size INT;
-- SET size = LENGTH(NEW.message);
-- -- `NEW` holds the data of the entire row.
-- SET NEW.bytes = size;
-- END;
-- DELIMITER ;
-- ```