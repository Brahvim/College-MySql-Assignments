SELECT *
FROM soc_net_db.users_table
ORDER BY registered_on DESC;
-- - `ORDER BY` sorts, while `DESC` assists it with asking for it to be in the descending order.
-- - `WHERE` checks for conditions, while `LIKE` assists it with using some string pattern-matching
--      (which can have RegEx in MySQL, though it's not necessary for SQL interpreters in general).
-- - `IS` checks for `TRUE`, `FALSE` or `NULL`, while `NOT` assists it with asking for inverted conditions.