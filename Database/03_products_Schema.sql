-- ============================================================
-- ecommerce database -- seed data matching the user's real schema
-- Dialect: MySQL 8.0+
-- Active: 1784175318492@@127.0.0.1@3306@ecommerce
-- ============================================================

ALTER TABLE ecommerce.products
MODIFY COLUMN productID INT PRIMARY KEY AUTO_INCREMENT;

ALTER TABLE ecommerce.products
MODIFY COLUMN category VARCHAR(200) NOT NULL;
