-- 8. How much market of tshirt is captured by roadster?

with total as 
	(
    select sum(discounted_price * rating_count) as "revenue" from products
    where product_tag = 'tshirts'
    ),
    roadster as
    (
    select sum(discounted_price * rating_count) as "revenue_roadster" from products 
    where product_tag = 'tshirts' and brand_name = 'roadster'
    )
    select (revenue_roadster/revenue)*100 from total,roadster;
    
    
    
    

-- 9. How much market of tshirt is captured by top 5 tshirt brands?

with total as 
	(
    select sum(discounted_price * rating_count) as "revenue" from products
    where product_tag = 'tshirts'
    ),
    top5 as
    (
    select brand_name, sum(discounted_price * rating_count) as "revenue_top5" from products 
    where product_tag = 'tshirts' 
    group by products.brand_name 
    order by revenue_top5 desc limit 5
    ),
    top5_revenue as
    (
    select sum(top5.revenue_top5) as "rev" from top5
    )
    select (top5_revenue.rev/total.revenue)*100 from total,top5_revenue ;