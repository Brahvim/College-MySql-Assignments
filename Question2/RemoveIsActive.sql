ALTER TABLE soc_net_db.users_table DROP COLUMN is_active;
-- Remember: `DROP COLUMN IF EXISTS is_active;` doesn't apply here since it's 'unsafe'.