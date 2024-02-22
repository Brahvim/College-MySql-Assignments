-- Creating the DB (if it doesn't exist - that clause is a pretty good guard!):
CREATE SCHEMA IF NOT EXISTS soc_net_db;
-- *USE* the DB! Put it into context:
USE soc_net_db;
--  Creating aaaaaall three tables:
CREATE TABLE IF NOT EXISTS users_table(
    id INT AUTO_INCREMENT PRIMARY KEY,
    -- Renamed this field to `user_address` and didn't
    -- let it stay to be `address` since it causes issues:
    user_address VARCHAR(150),
    last_logged_on TIMESTAMP,
    registered_on TIMESTAMP,
    username VARCHAR(60),
    email VARCHAR(255),
    is_active TINYINT,
    dob TIMESTAMP
);
CREATE TABLE IF NOT EXISTS friends_table(
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT UNSIGNED NOT NULL,
    friend_name VARCHAR(60)
);
CREATE TABLE IF NOT EXISTS users_profiles(
    user_id INT,
    id INT PRIMARY KEY,
    user_location VARCHAR(30)
);
-- Apparently you *can* set a starting value for `auto_increment`ing stuff:
-- `ALTER TABLE example_table AUTO_INCREMENT = 1000;`