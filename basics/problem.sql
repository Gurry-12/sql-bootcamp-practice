Use MyDatabase;

--- Use is used to switch into the databases in A server 

-- Task 1 : Retrieve all the data 
SELECT * 
FROM customers;

-- * is use to retrieve all the data 

-- Task 2 : Retrieve Order data 
SELECT * 
FROM orders;

--- Let select few columns from tables 

-- Task 3: Retrieve all customer's name, country, and score

SELECT first_name, country, score 
FROM customers;

-- Task 4: Retrieve customers which score is not equal to 0 
SELECT 
	first_name,
	country
FROM customers
Where score != 0;

-- Task 5: Retrieve customers from Germany 
SELECT * 
FROM customers
Where country = 'Germany';

/* -- Order By - Sorting the data in an order either descending or acending */

-- Sort By Descending 
SELECT * 
FROM customers
ORDER BY score DESC;

-- Sort By Ascending 
SELECT * 
FROM customers
ORDER BY score;

-- NESTED ORDER - 
-- Retrieve based on country in ascending and after that score in descending 

SELECT * 
FROM customers 
ORDER BY 
	country,
	score DESC;


-- GROUP BY -- CREATE THE GROUP OR MAKE THE COLLECTION OF DATA WHICH IS SIMILER 

-- Task: Find the total score of countries 
SELECT 
	country,
	SUM(score) total_score
FROM customers
GROUP BY country;

-- Task: Find total score and total no of customers of each country 

SELECT 
	country,
	SUM(score) total_score,
	COUNT(id) total_Customer
FROM customers
GROUP BY country;

-- HAVING - apply condition or Filter on Aggrigated data 

-- Task: Get data which is more that 800 score in GROUP BY and the score is greater then 400

SELECT 
	country,
	SUM(score) total_score
FROM customers
WHERE score > 400
GROUP BY country
HAVING SUM(score) > 800;


-- Task:
SELECT 
country,
AVG(score) avarage_score
FROM customers
WHERE score != 0
GROUP BY country
HAVING AVG(score) > 430;

-- DISTINCT - show unique values 

-- show only unique countries 
SELECT DISTINCT country 
FROM customers