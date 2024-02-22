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
UPDATE users_table
SET gender = 'M'
WHERE id = 3;
-- But that stuff makes SQL Turing complete (or something like that!)
UPDATE users_table
SET gender = 'M'
WHERE id = 4;
-- And the syntax is terrible!
UPDATE users_table
SET gender = 'F'
WHERE id = 5;
-- SQL was way ahead of its time.
UPDATE users_table
SET gender = 'M'
WHERE id = 6;
-- The syntax had to be something. It had to work.
UPDATE users_table
SET gender = 'M'
WHERE id = 7;
-- It sucks, so I'm not using it, but...
UPDATE users_table
SET gender = 'M'
WHERE id = 8;
-- Just so you know - we COULD'VE been *not* doing this!
UPDATE users_table
SET gender = 'F'
WHERE id = 9;
-- ...Alright, we're done.
UPDATE users_table
SET gender = 'M'
WHERE id = 10;