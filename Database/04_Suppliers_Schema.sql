-- ============================================================
-- ecommerce database -- seed data matching the user's real schema
-- Dialect: MySQL 8.0+
-- Active: 1784175318492@@127.0.0.1@3306@ecommerce
-- ============================================================

ALTER TABLE ecommerce.suppliers
MODIFY COLUMN supplierID INT PRIMARY KEY AUTO_INCREMENT;

ALTER TABLE ecommerce.suppliers
MODIFY COLUMN supplierName VARCHAR(200) NOT NULL;

ALTER TABLE ecommerce.suppliers
MODIFY COLUMN contactPerson VARCHAR(200) NOT NULL;

ALTER TABLE ecommerce.suppliers
MODIFY COLUMN phone BIGINT NOT NULL UNIQUE;

ALTER TABLE ecommerce.suppliers
MODIFY COLUMN email VARCHAR(250) NOT NULL UNIQUE;

ALTER TABLE ecommerce.suppliers MODIFY COLUMN address TEXT NOT NULL;

ALTER TABLE ecommerce.suppliers
MODIFY COLUMN city VARCHAR(100) NOT NULL;

ALTER TABLE ecommerce.suppliers
MODIFY COLUMN state VARCHAR(100) NOT NULL;

ALTER TABLE ecommerce.suppliers
MODIFY COLUMN country VARCHAR(100) NOT NULL;
