--product revenue(excluding shipping charges, adjusments,etc)
--total product revenue 
select sum(total_price) as [total_product_revenue] from [dbo].[cleaned_retail]
where Description NOT IN (
    'Manual', 
    'POSTAGE', 
    'DOT', 
    'DOTCOM POSTAGE',
    'CARRIAGE','discount'
)
-- total no of orders 


-- monthly revenue
select YearMonth,sum(total_price) as [monthly_product_revenue] from cleaned_retail
WHERE Description NOT IN (
    'Manual', 
    'POSTAGE', 
    'DOT', 
    'DOTCOM POSTAGE',
    'CARRIAGE','discount'
)
group by YearMonth
order by YearMonth asc

-- top 5 customers 
select top 5 customer_ID,sum(total_price) as [revenue_per_customer] from cleaned_retail
group by customer_ID
order by [revenue_per_customer] desc

--to check
select * from cleaned_retail
where customer_ID=18102
--how much do these top 5 customers contribute to the revenue of the company 
select top 5 customer_ID,sum(total_price) as [revenue_per_customer] from cleaned_retail
WHERE Description NOT IN (
    'Manual', 
    'POSTAGE', 
    'DOT', 
    'DOTCOM POSTAGE',
    'CARRIAGE','discount'
)
group by customer_ID
order by [revenue_per_customer] desc
--how much do these top 10 customers contribute to the revenue of the company 

with top_customers as (select top 10 customer_ID,sum(total_price) as [revenue_per_customer] from cleaned_retail
WHERE Description NOT IN (
    'Manual', 
    'POST', 
    'DOT', 
    'DOTCOM POSTAGE',
    'CARRIAGE','discount'
)
group by customer_ID
order by [revenue_per_customer] desc
)

select sum(revenue_per_customer) as [revenue_from_top 10_cust],
sum(revenue_per_customer) *100/(select sum(total_price) from cleaned_retail) as [contribution fromtop 10 customer in %]
from top_customers

--how much do top 10 products contribute to total revenue 
with top_products as ( select top 10 Description,sum(total_price) as [revenue_per_product] from cleaned_retail
WHERE Description NOT IN (
    'Manual', 
    'POSTAGE', 
    'DOT', 
    'DOTCOM POSTAGE',
    'CARRIAGE','discount'
)
group by Description
order by [revenue_per_product] desc
)
select sum(revenue_per_product) as [revenue_from_top_10_products],sum(revenue_per_product)*100/(select sum(total_price) from cleaned_retail) 
as [contribution from top 10 products in %] from top_products










select * from cleaned_retail
where Description='DOTCOM POSTAGE'



select count(distinct Customer_ID) from cleaned_retail
