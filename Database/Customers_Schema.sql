-- ============================================================
-- ecommerce database -- seed data matching the user's real schema
-- Dialect: MySQL 8.0+
-- Active: 1784175318492@@127.0.0.1@3306@ecommerce
-- ============================================================

DROP DATABASE IF EXISTS ecommerce; 
CREATE DATABASE ecommerce;

USE ecommerce;

-- ============================================================
--                      1. Customers
-- ============================================================

ALTER TABLE ecommerce.customers
MODIFY COLUMN customerID INT PRIMARY KEY UNIQUE AUTO_INCREMENT;

ALTER TABLE ecommerce.customers
MODIFY COLUMN firstName VARCHAR(150) NOT NULL;

ALTER TABLE ecommerce.CUSTOMERS
MODIFY COLUMN lastName VARCHAR(150) NOT NULL;

ALTER TABLE ecommerce.customers ADD COLUMN dob DATE AFTER lastName;

UPDATE ecommerce.customers
SET dob = STR_TO_DATE(birthDate, '%m/%d/%Y');

SET SQL_SAFE_UPDATES = 0;

ALTER TABLE ecommerce.customers DROP COLUMN birthDate;

ALTER TABLE ecommerce.customers
ADD COLUMN new_anniversary DATE AFTER moneySpent;

UPDATE ecommerce.customers
SET new_anniversary = STR_TO_DATE(anniversary, '%m/%d/%Y')
WHERE anniversary IS NOT NULL AND anniversary != '';

ALTER TABLE ecommerce.customers DROP COLUMN anniversary;

ALTER TABLE ecommerce.customers
rename COLUMN new_anniversary TO anniversary;
