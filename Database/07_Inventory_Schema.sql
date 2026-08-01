-- ============================================================
-- ecommerce database -- seed data matching the user's real schema
-- Dialect: MySQL 8.0+
-- Active: 1784175318492@@127.0.0.1@3306@ecommerce
-- ============================================================

ALTER TABLE inventory
MODIFY COLUMN inventoryID INT PRIMARY KEY AUTO_INCREMENT;

ALTER TABLE inventory
ADD CONSTRAINT FOREIGN KEY(productID) REFERENCES products(productID);

ALTER TABLE inventory
ADD CONSTRAINT FOREIGN KEY(supplierID) REFERENCES suppliers(supplierID);

ALTER TABLE inventory
MODIFY COLUMN quantityInStock INT NOT NULL;

ALTER TABLE inventory
MODIFY COLUMN inventoryID INT NOT NULL;

ALTER TABLE inventory
MODIFY COLUMN warehouseLocation TEXT NOT NULL;

ALTER TABLE inventory
ADD COLUMN lastUpdated_Date DATE AFTER warehouseLocation;

UPDATE ecommerce.inventory
SET lastUpdated_Date = STR_TO_DATE(lastUpdated, '%m/%d/%Y')
WHERE lastUpdated IS NOT NULL AND lastUpdated != '';

ALTER TABLE ecommerce.inventory DROP COLUMN lastUpdated;
