CREATE DATABASE IF NOT EXISTS poly_college_db;
USE poly_college_db;
--
-- MySQL bug `1396` - you MUST `DROP` users before creating them!:
--
DROP USER 'Staff' @'localhost';
CREATE USER 'Staff' @'localhost' identified by 'StaffPwd';
-- RIGHT before creating them, I mean:0
DROP USER 'Students' @'localhost';
CREATE USER 'Students' @'localhost' identified by 'StdPwd';
--
-- This grants users privileges:
--
GRANT CREATE ON poly_college_db TO 'Students' @'localhost';
GRANT ALL PRIVILEGES ON poly_college_db TO 'Staff' @'localhost';
--
-- ...and this shows their permissions:
--
SHOW GRANTS FOR 'Students'@'localhost';
SHOW GRANTS FOR 'Staff' @'localhost';