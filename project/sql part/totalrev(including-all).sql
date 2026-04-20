--total revenues
SELECT SUM(total_price) AS total_revenue_all
FROM cleaned_retail;

--total orders
select count(distinct Invoice) as [total_no_of_orders]from cleaned_retail


-- monthly revenue
select YearMonth,sum(total_price) as [monthly_revenue] from cleaned_retail
group by YearMonth
order by YearMonth asc
--total expenses 
SELECT SUM(total_price) AS total_revenue_all
FROM cleaned_retail
WHERE Description IN (
    'Manual', 
    'POSTAGE', 
    'DOT', 
    'DOTCOM POSTAGE',
    'CARRIAGE','discount'
)
