# Task 3: SQL Data Analysis (Adidas Sales)

## 🚀 Objective
The goal of this task was to demonstrate **SQL proficiency** by querying a relational database. I analyzed the **Adidas US Sales** dataset to extract key performance metrics, utilizing aggregations, joins, and subqueries.

## 🛠️ Tools Used
- **SQL (SQLite)**: Used for querying the database.
- **Python (Pandas)**: Used to load the CSV data into a SQL environment.
- **Dataset**: Adidas US Sales Dataset

## 🗄️ Database Schema
To simulate a relational environment, I utilized two tables:
1.  **Sales Table**: Contains transaction details (Retailer, Product, Price, Sales, Region).
2.  **Managers Table**: A supplementary table mapping Regions to Regional Managers (used for JOIN operations).

## 🔍 Key Queries & Insights
1.  **Retailer Leaderboard:** Identified "West Gear" and "Foot Locker" as the top revenue drivers using `GROUP BY`.
2.  **Targeted Filtering:** Isolated high-value transactions in key markets (New York) using `WHERE` clauses.
3.  **Regional Accountability:** Used `INNER JOIN` to link sales revenue to specific Regional Managers.
4.  **Pricing Strategy:** Used a `Subquery` to filter for premium products priced above the global average.

## 📂 Files Included
- `Task3_Adidas_Queries.sql`: The raw SQL script.
- `Task3_Output.png`: Screenshot of the query results.
