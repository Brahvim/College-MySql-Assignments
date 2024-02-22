-- Creating the DB:
CREATE SCHEMA soc_net_db;

--  Creating aaaaaall three tables:
CREATE TABLE users_table(
        id INT AUTO_INCREMENT PRIMARY KEY,
        user_address VARCHAR(150),
        last_logged_on TIMESTAMP
        registered_on TIMESTAMP,
        username VARCHAR(60),
        email VARCHAR(255),
        is_active TINYINT,
        dob TIMESTAMP,
    );

CREATE TABLE friends_table(
        id INT AUTO_INCREMENT PRIMARY KEY,
        user_id INT UNSIGNED NOT NULL,
        friend_name VARCHAR(60),
    );

CREATE TABLE profile_table(
    user_id INT,
    id INT PRIMARY KEY,
    user_location VARCHAR(30),
    );


-- Describe the tables:

DESCRIBE users_table;
DESCRIBE friends_table;
DESCRIBE profiles_table;
