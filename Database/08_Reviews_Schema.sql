-- ============================================================
-- ecommerce database -- seed data matching the user's real schema
-- Dialect: MySQL 8.0+
-- Active: 1784175318492@@127.0.0.1@3306@ecommerce
-- ============================================================

ALTER TABLE reviews
MODIFY COLUMN reviewID INT PRIMARY KEY AUTO_INCREMENT;

ALTER TABLE reviews
ADD CONSTRAINT FOREIGN KEY(customerID) REFERENCES customers(customerID);

ALTER TABLE reviews
ADD CONSTRAINT FOREIGN KEY(productID) REFERENCES products(productID);

ALTER TABLE reviews
MODIFY COLUMN rating ENUM('1', '2', '3', '4', '5') NOT NULL;

ALTER TABLE reviews
MODIFY COLUMN reviewTitle VARCHAR (150) NOT NULL;

ALTER TABLE reviews
MODIFY COLUMN reviewText TEXT;

ALTER TABLE reviews
ADD COLUMN review_Date DATE AFTER reviewText;

UPDATE ecommerce.reviews
SET review_Date = STR_TO_DATE(reviewDate, '%Y-%m-%d')
WHERE reviewDate IS NOT NULL AND reviewDate != '';

ALTER TABLE ecommerce.reviews DROP COLUMN reviewDate;
