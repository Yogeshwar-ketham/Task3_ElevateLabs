-- Task 3: SQL Data Analysis (Adidas)
-- Objective: Analyze Sales Data using SQL
-- Database: Adidas Sales (SQLite)

-- QUERY 1: AGGREGATION (GROUP BY)
-- Which Retailer is generating the highest total revenue?
SELECT Retailer, SUM("Total Sales") as Global_Sales
FROM Sales
GROUP BY Retailer
ORDER BY Global_Sales DESC;

-- QUERY 2: FILTERING (WHERE)
-- Find top 5 sales transactions for 'Women''s Apparel' in New York.
SELECT "Invoice Date", Retailer, "Total Sales"
FROM Sales
WHERE Product = 'Women''s Apparel' AND State = 'New York'
ORDER BY "Total Sales" DESC
LIMIT 5;

-- QUERY 3: JOIN OPERATIONS (INNER JOIN)
-- Show the Regional Manager responsible for each sale region.
SELECT s.Region, m.Regional_Manager, SUM(s."Total Sales") as Region_Revenue
FROM Sales s
JOIN Managers m ON s.Region = m.Region
GROUP BY s.Region, m.Regional_Manager;

-- QUERY 4: SUBQUERY
-- Find products with a price higher than the average price.
SELECT Product, "Price per Unit"
FROM Sales
WHERE "Price per Unit" > (SELECT AVG("Price per Unit") FROM Sales)
LIMIT 10;
