Product Pricing \& Profitability Analysis Using SQL



Project Overview



This project analyzes product pricing, unit costs, potential profit, and profit margins using SQL in MySQL Workbench.



Objectives



\- Identify the most expensive products.

\- Calculate potential profit per unit.

\- Calculate profit margin percentages.

\- Compare pricing and profitability across product categories.

\- Rank products based on potential profit and profit margin.



Dataset



\- File: "products.csv"

\- Number of products: 90 (expected)

\- Columns: "product\_id", "product\_name", "category", "list\_price", "unit\_cost"



Tools Used



\- MySQL

\- MySQL Workbench

\- SQL



SQL Concepts Practiced



\- SELECT, WHERE, ORDER BY, LIMIT

\- LIKE, BETWEEN, AND, OR

\- Aggregate functions: COUNT, AVG, MIN, MAX

\- GROUP BY and HAVING

\- CASE statements

\- Subqueries

\- Window functions: RANK() and PARTITION BY

\- Data cleaning with TRIM() and UPPER()



Key Business Questions



1\. Which products have the highest list prices?

2\. Which products generate the highest potential profit per unit?

3\. Which categories have the highest average potential profit?

4\. Which products have the highest profit margins?

5\. Which products rank in the top three for profit margin in each category?



Business Insights



Add five findings here after checking your actual SQL query results.



Project Files



\- "product\_analysis.sql" — SQL queries used for analysis

\- "products.csv" — Source dataset (include only if you have permission to share it)



Disclaimer



Potential profit per unit is calculated as list price minus unit cost. It does not account for other expenses, discounts, taxes, or actual sales volume.

