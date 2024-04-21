DROP DATABASE IF EXISTS poly_college_db;
CREATE DATABASE IF NOT EXISTS poly_college_db;
USE poly_college_db;
--
-- ...A table:
--
-- Reminder: Primary keys are non-null by default:
CREATE TABLE IF NOT EXISTS new_table(
    id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(15) NOT NULL
);
DESCRIBE poly_college_db.new_table;
--
-- MySQL bug `1396` - you MUST `DROP` users before creating them!:
--
DROP USER IF EXISTS 'Staff' @'localhost';
CREATE USER 'Staff' @'localhost' identified by 'StaffPwd';
-- RIGHT before creating them, I mean:0
DROP USER IF EXISTS 'Students' @'localhost';
CREATE USER 'Students' @'localhost' identified by 'StdPwd';
--
-- This grants users privileges:
--
GRANT CREATE ON poly_college_db TO 'Students' @'localhost';
GRANT ALL PRIVILEGES ON poly_college_db TO 'Staff' @'localhost';
-- DROP DATABASE IF EXISTS poly_college_db;