-- ============================================================
-- 						BASIC SELECT
-- ============================================================

-- Q1 Retrieve all columns and all rows	from the customers table.
SELECT * FROM customers;

-- Q2 Retrieve	firstName, lastName and	dob	for	every customer.
SELECT
	firstName,
    lastName,
    dob
FROM customers;

-- Q3 Find all distinct	product	categories.
SELECT DISTINCT 
	category
FROM products;

-- Q4 Retrieve category	and	price, renaming	price as Price.
SELECT 
	category,
    price AS Price
FROM products;

-- Q5 Build	a single full_name column by joining firstName and lastName	with a space, for every	customer
SELECT 
	customerID,
    CONCAT(firstName, ' ', lastName) AS CustomersName
FROM customers;

-- Q6 Show category, price,	and	the	price after	a flat 10% discount	as discounted_price.
SELECT 
	category,
    price,
    ROUND(price - (price * 0.10), 2) AS discountedPrice
FROM products;

-- Q7 Preview the first	5 rows of the orders table.
SELECT * FROM orders
ORDER BY orderID ASC
LIMIT 5;

SELECT * FROM orders
LIMIT 5;

-- Q8. Retrieve	employeeID,	firstName, and lastName	for	every employee.
SELECT
	employeeID,
    CONCAT(firstName, ' ', lastName) AS employeesName
FROM employees;

-- Q9 List every supplier's	name along with	the	city they operate from.
SELECT 
	supplierID,
    supplierName,
    city
FROM suppliers;

-- Q10. Retrieve the order ID and order	total for every	order placed.
SELECT 
	orderID,
    orderTotal
FROM orders;
