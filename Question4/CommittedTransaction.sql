-- Can also use `BEGIN` instead of `START TRANSACTION`.
-- PS Transactions can have some characteristics.
-- (See [ https://dev.mysql.com/doc/refman/8.0/en/commit.html ]).
-- (Pseudocode from the official docs markdown-formatted:
--  ```
-- START TRANSACTION
--     *[transaction_characteristic [, transaction_characteristic] ...]*
-- *transaction_characteristic*: {
--     WITH CONSISTENT SNAPSHOT
--   | READ WRITE
--   | READ ONLY
-- }
-- BEGIN [WORK]
-- COMMIT [WORK] [AND [NO] CHAIN] [[NO] RELEASE]
-- ROLLBACK [WORK] [AND [NO] CHAIN] [[NO] RELEASE]
-- SET autocommit = {0 | 1}
-- ```)
--
-- `autocommit` is a feature specific to InnoDB (Oracle's "DB engine" running MySQL)
-- that treats literally EVERY non-erroneous statement as a transaction! You can revert anytime!
START TRANSACTION READ WRITE;
CREATE TABLE IF NOT EXISTS new_table(
    -- Reminder: Primary keys are non-null by default:
    id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(15) NOT NULL
);
DESCRIBE poly_college_db.new_table;
INSERT INTO poly_college_db.new_table (full_name)
VALUES ("Brahvim"),
    ("Shivam"),
    ("fake person");
COMMIT;
SELECT *
FROM poly_college_db.new_table;
-- DROP TABLE IF EXISTS poly_college_db.new_table;