-- ============================================================
-- ecommerce database -- seed data matching the user's real schema
-- Dialect: MySQL 8.0+
-- Active: 1784175318492@@127.0.0.1@3306@ecommerce
-- ============================================================

ALTER TABLE payments
MODIFY COLUMN paymentID INT PRIMARY KEY AUTO_INCREMENT;

ALTER TABLE payments
ADD CONSTRAINT FOREIGN KEY(orderID) REFERENCES orders(orderID);

ALTER TABLE payments
MODIFY COLUMN paymentMethod 
ENUM ('Net Banking', 'Debit Card', 'Cash on Delivery', 'Credit Card', 'UPI', 'Others') NOT NULL;
    
ALTER TABLE payments
MODIFY COLUMN paymentStatus
ENUM ('Failed', 'Paid', 'Pending', 'Refunded') NOT NULL;

ALTER TABLE payments
MODIFY COLUMN amount DECIMAL(10, 2) CHECK(amount > 0) NOT NULL;

ALTER TABLE payments
MODIFY COLUMN transactionID TEXT NOT NULL;

ALTER TABLE payments
MODIFY COLUMN paymentsDate DATE NOT NULL AFTER transactionID;

UPDATE ecommerce.payments
SET paymentsDate = STR_TO_DATE(paymentDate, '%Y-%m-%d')
WHERE paymentDate IS NOT NULL AND paymentDate != '';

ALTER TABLE ecommerce.payments DROP COLUMN paymentDate;
