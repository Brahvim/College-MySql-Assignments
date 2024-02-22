-- 'Alter' the table to insert the field.
ALTER TABLE users_table
ADD COLUMN gender CHAR(1);
-- ...
-- ...Just checking!:
DESCRIBE TABLE users_table;
-- (By the way, `BOOLEAN` is a data type, too!:)
-- ...Anyway:
--
-- We now update the table to add more synthetic data!:
UPDATE users_table
SET gender = 'M'
WHERE id = 1;
-- Update the gender for another row:
UPDATE users_table
SET gender = 'F'
WHERE id = 2;
-- Apparently we have loops, too.