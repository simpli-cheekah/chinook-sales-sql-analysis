-- ====================================================================
-- WEEK 3 INTERNSHIP DELIVERABLES: DATABASE MASTER QUERY SCRIPT
-- ====================================================================

-- --------------------------------------------------------------------
-- CHINOOK MUSIC STORE ANALYSIS
-- --------------------------------------------------------------------

-- Query 1: Top 5 Highest Spending Customers (Aggregations & Joins)
SELECT 
    c.customer_id, 
    c.first_name, 
    c.last_name, 
    SUM(i.total) AS total_spent
FROM customer c
INNER JOIN invoice i ON c.customer_id = i.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_spent DESC
LIMIT 5;

-- Query 2: Annual Revenue Trends over Time (Date Parsing & Summaries)
SELECT 
    EXTRACT(YEAR FROM invoice_date) AS sales_year,
    SUM(total) AS total_revenue
FROM invoice
GROUP BY EXTRACT(YEAR FROM invoice_date)
ORDER BY sales_year ASC;

-- Query 3: Individual Track Pricing Rankings within Albums (Advanced Window Functions)
SELECT 
    album_id,
    name AS track_name,
    unit_price,
    RANK() OVER(PARTITION BY album_id ORDER BY unit_price DESC) AS price_rank
FROM track
LIMIT 20;