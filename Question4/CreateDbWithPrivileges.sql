CREATE DATABASE IF NOT EXISTS poly_college_db;
USE poly_college_db;
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