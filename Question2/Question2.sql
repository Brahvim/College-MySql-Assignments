-- Note: This script has too many syntax errors right now.



-- Creating the DB:
CREATE SCHEMA soc_net_db;

--  Creating aaaaaall three tables:
CREATE TABLE users_table(
        id AUTO INCREMENT,
        PRIMARY KEY field username VARCHAR(60),
        email VARCHAR(255),
        address VARCHAR(150),
        dob TIMESTAMP,
        is_active TINYINT,
        registered_on TIMESTAMP,
        last_logged_on TIMESTAMP
    );

CREATE TABLE users_table(
        id AUTO INCREMENT,
        PRIMARY KEY field user_id unsigned INT,
        NOT NULL friend_name(60),
    );

CREATE TABLE users_table(
        id user_id location,
    );


