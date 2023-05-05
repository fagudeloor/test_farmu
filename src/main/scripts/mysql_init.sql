DROP DATABASE IF EXISTS farmutools;
DROP USER IF EXISTS `user_farmu`@`%`;
CREATE DATABASE IF NOT EXISTS farmutools CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER IF NOT EXISTS `user_farmu`@`%` IDENTIFIED WITH mysql_native_password BY 'password';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, REFERENCES, INDEX, ALTER, EXECUTE, CREATE VIEW, SHOW VIEW,
CREATE ROUTINE, ALTER ROUTINE, EVENT, TRIGGER ON `farmutools`.* TO `user_farmu`@`%`;
FLUSH PRIVILEGES;