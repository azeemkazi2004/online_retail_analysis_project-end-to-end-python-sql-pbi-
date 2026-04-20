 --countries by revenue 
select sum(total_price) as [revenue_per_country],country from cleaned_retail
where Description not in ('Manual', 'POSTAGE','DOT','DOTCOM POSTAGE','CARRIAGE','discount')
group by country
order by [revenue_per_country] desc

--country by revneue excluding uk
select sum(total_price) as [revenue_per_country],country from cleaned_retail
where country not like ('United Kingdom') and Description not in ('Manual', 'POSTAGE','DOT','DOTCOM POSTAGE','CARRIAGE','discount')
group by country
order by [revenue_per_country] desc
--avg order value 
select sum(total_price)/ count (distinct Invoice) as [AOV] from cleaned_retail
where Description not in ('Manual', 'POSTAGE','DOT','DOTCOM POSTAGE','CARRIAGE','discount')

--aov by country 
select sum(total_price)/ count(distinct Invoice) as [AOV_by_country],country from cleaned_retail
where Description not in ('Manual', 'POSTAGE','DOT','DOTCOM POSTAGE','CARRIAGE','discount')
group by country
order by [AOV_by_country] desc


-- aov by month
select YearMonth,sum(total_price)/ count (distinct Invoice) as [AOV_by_month]  from cleaned_retail
where Description not in ('Manual', 'POSTAGE','DOT','DOTCOM POSTAGE','CARRIAGE','discount')
group by YearMonth
order by YearMonth
