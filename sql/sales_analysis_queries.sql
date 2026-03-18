-- Total Sales
SELECT SUM(Sales) AS Total_Sales  
FROM orders;

-- Total Orders
SELECT COUNT(*) AS Total_Orders
FROM orders;

-- Sales by Category
SELECT Category, SUM(Sales) AS Total_Sales
FROM orders
GROUP BY Category
ORDER BY Total_Sales DESC;

-- Sales by Region
SELECT Region, SUM(Sales) AS Total_Sales
FROM orders
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Monthly Sales Trend
SELECT DATE_FORMAT(Order_Date, '%Y-%m') AS Month,
SUM(Sales) AS Monthly_Sales
FROM orders
GROUP BY Month
ORDER BY Month;

-- Top 10 Products
SELECT Product_Name, SUM(Sales) AS Total_Sales
FROM orders
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 10;

-- Rank Products by Sales
SELECT Product_Name,
       SUM(Sales) AS Total_Sales,
       RANK() OVER (ORDER BY SUM(Sales) DESC) AS Rank_Position
FROM orders
GROUP BY Product_Name;

