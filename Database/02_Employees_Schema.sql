-- ============================================================
-- ecommerce database -- seed data matching the user's real schema
-- Dialect: MySQL 8.0+
-- Active: 1784175318492@@127.0.0.1@3306@ecommerce
-- ============================================================

USE ecommerce;

ALTER TABLE ecommerce.employees
MODIFY COLUMN employeeID INT PRIMARY KEY UNIQUE AUTO_INCREMENT;

ALTER TABLE ecommerce.employees
MODIFY COLUMN firstName VARCHAR(150) NOT NULL;

ALTER TABLE ecommerce.employees
MODIFY COLUMN lastName VARCHAR(150) NOT NULL;

ALTER TABLE ecommerce.employees ADD COLUMN dob DATE AFTER lastName;

SET SQL_SAFE_UPDATES = 0;

UPDATE ecommerce.employees
SET dob = STR_TO_DATE(birthDate, '%Y-%m-%d');

ALTER TABLE ecommerce.employees DROP COLUMN birthDate;
