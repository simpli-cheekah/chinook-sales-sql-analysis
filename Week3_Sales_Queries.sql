-- --------------------------------------------------------------------
-- KAGGLE RETAIL SALES ANALYSIS
-- --------------------------------------------------------------------

-- Query 1: Top Performing Product Lines by Total Revenue (Aggregations)
SELECT 
    product_line, 
    SUM(sales) AS total_revenue,
    COUNT(order_number) AS total_orders
FROM sales_records
GROUP BY product_line
ORDER BY total_revenue DESC;

-- Query 5: Monthly Sales Performance Timeline (Trend Tracking)
SELECT 
    year_id, 
    month_id, 
    SUM(sales) AS monthly_revenue
FROM sales_records
GROUP BY year_id, month_id
ORDER BY year_id ASC, month_id ASC;

-- Query 2: Top 3 Best-Selling Product Lines Per Country (Advanced Window Function)
WITH country_product_sales AS (
    SELECT 
        country,
        product_line,
        SUM(sales) AS total_sales,
        DENSE_RANK() OVER (PARTITION BY country ORDER BY SUM(sales) DESC) AS product_rank
    FROM sales_records
    GROUP BY country, product_line
)
SELECT country, product_line, total_sales, product_rank
FROM country_product_sales
WHERE product_rank <= 3;

-- Query 3: Advanced High-Value Deal Segmentation (Conditional Case Logic)
SELECT 
    CASE 
        WHEN sales >= 7000 THEN 'Tier 1: Mega Deal (>= $7k)'
        WHEN sales >= 4000 AND sales < 7000 THEN 'Tier 2: Mid-Market ($4k - $7k)'
        ELSE 'Tier 3: Standard Retail (< $4k)'
    END AS deal_segment,
    COUNT(order_number) AS total_orders,
    SUM(sales) AS total_revenue,
    ROUND(AVG(sales), 2) AS average_order_value
FROM sales_records
GROUP BY 1
ORDER BY total_revenue DESC;