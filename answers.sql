use salesdb;

-- 1. Inner join
SELECT e.firstName, e.lastName, e.email, e.officeCode
FROM employees e
JOIN offices o ON e.officeCode = o.officeCode;

-- 2. Left join
SELECT p.productName, p.productVendor, pl.productLine
FROM products p
LEFT JOIN productlines pl ON p.productLine = pl.productLine;

-- 3. Right join
SELECT o.orderDate, o.shippedDate, o.status, c.customerName
FROM customers c 
RIGHT JOIN orders o ON c.customerNumber = o.customerNumber
LIMIT 10;