-- ============================================================
--                      5. Orders
-- ============================================================

USE ecommerce;

ALTER TABLE orders
MODIFY COLUMN orderID INT PRIMARY KEY AUTO_INCREMENT;

ALTER TABLE orders
ADD CONSTRAINT FOREIGN KEY(customerID) REFERENCES customers(customerID);

ALTER TABLE orders
ADD CONSTRAINT FOREIGN KEY(employeeID) REFERENCES employees(employeeID);

ALTER TABLE orders
ADD CONSTRAINT FOREIGN KEY(productID) REFERENCES products(productID);

ALTER TABLE orders
MODIFY COLUMN orderTotal DECIMAL(10, 2) CHECK(orderTotal > 0) NOT NULL;

ALTER TABLE orders
MODIFY COLUMN ordersDate DATE AFTER orderTotal;

SET SQL_SAFE_UPDATES = 0;

UPDATE ecommerce.orders
SET ordersDate = STR_TO_DATE(orderDate, '%m/%d/%Y')
WHERE orderDate IS NOT NULL AND orderDate != '';

ALTER TABLE ecommerce.orders DROP COLUMN orderDate;

ALTER TABLE ecommerce.orders DROP COLUMN MyUnknownColumn;

ALTER TABLE ecommerce.orders DROP COLUMN MyUnknownColumn0;

ALTER TABLE ecommerce.orders DROP COLUMN MyUnknownColumn1;
