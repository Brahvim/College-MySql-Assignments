SELECT *
FROM soc_net_db.users_table
WHERE user_address LIKE '%chennai%';
-- Result? `user5` is from Chennai!
-- 
-- `BINARY` is for case-sensitive matches:
-- ```sql
-- SELECT *
-- FROM table
-- WHERE BINARY col LIKE 'pattern%';
-- ```
--
-- -- 'Collation' allows case-sensitive matches, too!:
-- ```sql
-- SELECT *
-- FROM table
-- WHERE col COLLATE utf8_bin LIKE 'pattern%';
-- ```