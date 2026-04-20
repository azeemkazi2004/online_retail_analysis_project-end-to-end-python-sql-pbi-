--customer types 

WITH customer_orders AS (
    SELECT Customer_ID, COUNT(DISTINCT Invoice) AS order_count
    FROM cleaned_retail
	where Description not in ('Manual', 'POSTAGE','DOT','DOTCOM POSTAGE','CARRIAGE','discount')
    GROUP BY Customer_ID
)

SELECT 
    COUNT(CASE WHEN order_count = 1 THEN 1 END) AS one_time_customers,
    COUNT(CASE WHEN order_count > 1 THEN 1 END) AS repeat_customers
FROM customer_orders;
--checking 
--customer types 

WITH customer_orders AS (
    SELECT Customer_ID, COUNT(DISTINCT Invoice) AS order_count
    FROM cleaned_retail
	where Description not in ('Manual', 'POSTAGE','DOT','DOTCOM POSTAGE','CARRIAGE','discount') and Country='Australia'
    GROUP BY Customer_ID
)

SELECT 
    COUNT(CASE WHEN order_count = 1 THEN 1 END) AS one_time_customers,
    COUNT(CASE WHEN order_count > 1 THEN 1 END) AS repeat_customers
FROM customer_orders;

