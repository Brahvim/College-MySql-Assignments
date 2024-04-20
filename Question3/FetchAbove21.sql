SELECT *
FROM soc_net_db.users_table
WHERE TIMESTAMPDIFF(YEAR, dob, CURDATE()) > 21;
-- WHERE TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) > 21;
-- ...
-- (Remember; we were asked to change `dob` to `date_of_birth`! Keep trying!)
-- ...
-- This query shows all users; they're all more than `21` years old.
-- (`32` is a good test given the synthetic data we put in our DB earlier).
-- ...
-- We select all rows/entries where the timestamp-difference ('`TIMESTAMPDIFF`')
-- of the years in `date_of_birth` and `CURDATE()` is greater than `21`.