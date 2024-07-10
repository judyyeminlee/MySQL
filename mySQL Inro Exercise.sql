-- Using the bestbuy database:
-- Copy the following and paste into MySql Workbench

-- find all products
SELECT * FROM products;
use bestbuy;
-- find all products that cost $1400
SELECT * FROM products WHERE Price = 1400 AND NOT OnSale = TRUE;
-- find all products that cost $11.99 or $13.99
SELECT * FROM products WHERE Price = 11.99 OR 13.99;
-- find all products that do NOT cost 11.99 - using NOT
SELECT * FROM products WHERE NOT Price = 11.99;
-- find all products and sort them by price from greatest to least
SELECT * FROM products ORDER BY Price DESC;
-- find all employees who don't have a middle initial
SELECT * FROM employees WHERE MiddleInitial IS NULL;
-- find distinct product prices
Select DISTINCT Price FROM products;
-- find all employees whose first name starts with the letter ‘j’
SELECT * FROM employees WHERE FirstName LIKE 'J%';
-- find all Macbooks
Select * FROM products WHERE Name LIKE '%Macbook%';
-- find all products that are on sale
Select * FROM products WHERE OnSale = TRUE;
-- find the average price of all products
SELECT AVG(Price) FROM products;
-- find all Geek Squad employees who don't have a middle initial
SELECT * FROM employees WHERE Title = '%Geek%Squad%' AND MiddleInitial IS NULL;
-- find all products from the products table whose stock level is in the range -- of 500 to 1200. Order by Price from least to greatest. Hint: Use the between keyword
SELECT * FROM products WHERE StockLevel BETWEEN 500 AND 1200 ORDER BY Price;