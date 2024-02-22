-- (As discussed in `RenameTable.sql`:)
ALTER TABLE soc_net_db.users_table
    RENAME COLUMN dob TO date_of_birth;