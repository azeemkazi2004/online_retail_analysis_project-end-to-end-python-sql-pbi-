--how much they spend on shipping 
select sum(total_price) as [total_shipping_cost] from cleaned_retail
where Description in ('POSTAGE','DOT','DOTCOM POSTAGE','CARRIAGE')
-- adjusment revenue 
select sum(total_price) as [adjusment_revenue] from cleaned_retail
where Description like ('Manual')
--total discounnt given
select sum(total_price) as [total_discount_given] from cleaned_retail
where Description in ('discount')
