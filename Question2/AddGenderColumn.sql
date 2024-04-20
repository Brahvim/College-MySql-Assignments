-- 'Alter' the table to insert the field.
-- Attempt to drop the column if it exists:
-- `ALTER TABLE users_table DROP COLUMN IF EXISTS gender;`
--
-- ...And MySQL disallows it from being so convenient!
-- Why? Because you DON'T want to be modifying a DB you don't know about!
-- Well then...
-- ...We'll then add it right back in!:
ALTER TABLE users_table
ADD COLUMN -- Even an `IF NOT EXISTS` is disallowed! Gah!
    gender CHAR(1);
-- ...
-- ...Just checking!:
DESCRIBE users_table;
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
SET gender = NULL
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
-- Yeah, soooo... moment of truth:
SELECT *
FROM users_table;
-- Prod DB *not* messed up! Hooray!...
-- ...O-Or is it? HELLO!?