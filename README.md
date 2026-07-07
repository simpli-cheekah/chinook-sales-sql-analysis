# Week 3: SQL & Data Querying — AnalystLab Africa Internship

## Project Overview
This week, I analyzed data from two different business models: the **Chinook Music Store** database (e-commerce digital downloads) and a **Kaggle Sales Dataset** (global retail shipments). I wrote SQL queries to identify top customers, track sales trends over time, and evaluate how different products and deal sizes perform.

## Datasets
- [Chinook Database](https://github.com/lerocha/chinook-database) — Music store transactional data
- [Sales Dataset (Kaggle)](https://www.kaggle.com/datasets/kyanyoga/sample-sales-data) — Global retail sales data

## Files
| File | Description |
|---|---|
| `week3_chinook_Queries.sql` | Queries analyzing customer spending, revenue trends, and track pricing on the Chinook database |
| `week3_sales_Queries.sql` | Queries analyzing product line performance, regional sales, and deal-size segmentation on the retail dataset |

## Chinook Music Store Insights
- **Top Customer:** Helena Holy is the highest-spending customer, with total purchases of $49.62 — a useful benchmark for loyalty/VIP reward targeting.
- **Sales Trends:** Revenue from 2021–2025 rose significantly before peaking and slowing down, suggesting a win-back campaign for lapsed customers could be valuable.
- **Track Pricing:** Using a window function, track prices were found to be uniform across albums — indicating a consistent, standardized pricing strategy.

## Kaggle Retail Sales Insights
- **Best Product Line:** Classic Cars generate the highest total revenue and order volume globally, especially in the USA — a strong case for keeping this inventory well-stocked.
- **Deal Sizes:** Small, everyday retail orders occur most frequently, but "Mega Deals" (orders over $7,000) contribute the largest profit per sale — showing that focusing on large bulk buyers pays off disproportionately.

## SQL Concepts Applied
- `SELECT`, `WHERE`, `ORDER BY`, `GROUP BY`, `HAVING`
- Aggregate functions: `SUM`, `AVG`, `COUNT`
- Joins: `INNER JOIN`, `LEFT JOIN`
- Common Table Expressions (CTEs)
- Window functions: `RANK()`, `DENSE_RANK() OVER (PARTITION BY...)`
- `CASE WHEN` conditional logic
- Date extraction (`EXTRACT`)

## Tools
PostgreSQL, PgAdmin

---
*Week 3 project — AnalystLab Africa Data Analytics Internship (Batch B)*
