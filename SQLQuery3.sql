-- Question 1
SELECT first_name, last_name, city, phone
FROM sales.customers
WHERE state = 'CA' AND phone IS NOT NULL;


-- Question 2
SELECT product_id, product_name, model_year, list_price
FROM production.products
ORDER BY model_year DESC, list_price ASC;


-- Question 3 (a)
SELECT TOP 5 product_name, list_price
FROM production.products
ORDER BY list_price DESC;

-- Question 3 (b)
SELECT TOP 5 PERCENT *
FROM production.products
ORDER BY list_price ASC;
-- rows depend on total records (e.g. 100 rows = 5 rows)


-- Question 4 (Page 1)
SELECT *
FROM production.products
ORDER BY list_price DESC
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;

-- Question 4 (Page 2)
SELECT *
FROM production.products
ORDER BY list_price DESC
OFFSET 10 ROWS FETCH NEXT 10 ROWS ONLY;

-- Question 4 (Page 3)
SELECT *
FROM production.products
ORDER BY list_price DESC
OFFSET 20 ROWS FETCH NEXT 10 ROWS ONLY;


-- Question 5 (a)
SELECT DISTINCT state
FROM sales.customers
ORDER BY state;

-- Question 5 (b)
SELECT DISTINCT state, city
FROM sales.customers
ORDER BY state, city;

-- Question 5 (c)
SELECT COUNT(DISTINCT model_year) AS total_model_years
FROM production.products;


-- Question 6
SELECT product_id, product_name, brand_id, category_id, list_price
FROM production.products
WHERE list_price BETWEEN 500 AND 1500
AND (model_year = 2019 OR model_year = 2020)
ORDER BY list_price;