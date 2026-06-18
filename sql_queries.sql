SELECT * FROM blood_donation_db.sample_superstore;
SELECT * FROM blood_donation_db.sample_superstore
LIMIT 5;
USE blood_donation_db;
SELECT * FROM sample_superstore
LIMIT 5;

--sales analysis by category
SELECT Category,
       SUM(Sales) AS Total_Sales
FROM sample_superstore
GROUP BY Category
ORDER BY Total_Sales DESC;

--profit by category
SELECT Category,
       SUM(Profit) AS Total_Profit
FROM sample_superstore
GROUP BY Category
ORDER BY Total_Profit DESC;

--sales by region
SELECT Region,
       SUM(Sales) AS Total_Sales
FROM sample_superstore
GROUP BY Region
ORDER BY Total_Sales DESC;

--top 10 states
SELECT State,
       SUM(Sales) AS Total_Sales
FROM sample_superstore
GROUP BY State
ORDER BY Total_Sales DESC
LIMIT 10;

--discount impact
SELECT Discount,
       AVG(Profit) AS Avg_Profit
FROM sample_superstore
GROUP BY Discount
ORDER BY Discount;

--Discount vvs Avverage Profit
SELECT Discount,
       AVG(Profit) AS Avg_Profit
FROM sample_superstore
GROUP BY Discount
ORDER BY Discount;