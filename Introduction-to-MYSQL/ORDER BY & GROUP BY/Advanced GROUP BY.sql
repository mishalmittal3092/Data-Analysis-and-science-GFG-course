use gfgpractise;
select * from products;

-- 1. Which product categories witness the highest sales during the year?

select product_tag, sum(rating_count) as "Sold", sum(discounted_price * rating_count) as "revenue" from products
group by product_tag
order by revenue desc;

-- 2. Which brand witness the highest sales during year?

select brand_name, sum(rating_count) as "Sold", sum(discounted_price * rating_count) as "revenue" from products
group by brand_name
order by revenue desc;


-- 3. Which product categories of a specific brand witnessed maximum sales?

select brand_name,product_tag,  sum(rating_count) as "Sold", sum(discounted_price * rating_count) as "revenue" from products
group by brand_name, product_tag
order by revenue desc;


-- 4. What is the average price point of products across different categories and brands?

select brand_name,product_tag,  avg(discounted_price) as "price_point" from products
group by brand_name, product_tag
order by price_point desc;

-- 5. How much discount should be offered on each product to maximize revenue and profit?

select product_tag, sum(discounted_price * rating_count) as "revenue", avg(discount_percent) as "avg_discount" from products
group by product_tag
order by revenue desc;

-- 6. What is the average discount on tshirt we need to give?

select product_tag, sum(discounted_price * rating_count) as "revenue", avg(discount_percent) as "avg_discount" from products
where product_tag = "tshirts"
group by product_tag
order by revenue desc;


-- 7. What are the biggest brands in tshirt market?

select brand_name, product_tag, sum(discounted_price * rating_count) as "revenue", sum(rating_count) from products
where product_tag = 'tshirts'
group by brand_name 
order by revenue desc;





