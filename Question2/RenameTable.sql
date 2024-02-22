-- USE soc_net_db;
-- (I wonder why I haven't been using `.` syntax right away.)
ALTER TABLE soc_net_db.friends_table
    RENAME TO users_friends;
-- (Could've chosen not to remove the `soc_net_db` )
-- ...
-- Renaming a column:
-- ```sql
-- ALTER TABLE table_name
--     RENAME COLUMN old_column_name TO new_column_name;
-- ```
--
-- Renaming a schema:
-- ```sql
-- ALTER SCHEMA old_schema_name
-- RENAME TO new_schema_name;
-- ```