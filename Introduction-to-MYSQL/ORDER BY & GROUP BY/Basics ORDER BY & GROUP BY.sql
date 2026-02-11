use gfgpractise;
select * from products;

-- 1. Finding the top 5 brand who has the most number of products | different product in their inventory
select brand_name, count(product_tag) as "products" from products 
group by brand_name
order by products desc
limit 5;

-- 2. Finding the top 5 brand who sold the most number of products
select brand_tag, sum(rating_count) as "products_sold" from products 
group by brand_tag 
order by products_sold desc
limit 5;

-- 3. Finding the top 5 most expensive brands based on their discounted price
select brand_tag, avg(discounted_price) as "brand_value" from products 
group by brand_tag 
order by brand_value desc
limit 5;

-- 4. Finding the top 5 least expensive brands based on their discounted price
select brand_tag, avg(discounted_price) as "brand_value" from products 
group by brand_tag 
order by brand_value asc
limit 5;

-- 5. Finding the top 10 best-selling product categories 
select product_tag, sum(rating_count) as "product_sale" from products 
group by product_tag
order by product_sale desc
limit 10;

-- 6. Finding the top 10 brands who gives maximum discount
select brand_tag, avg(discount_percent) as "discount" from products 
group by brand_tag 
order by discount desc
limit 10;

-- 7. Finding the top 5 most expensive product categories
select product_tag, avg(discounted_price) as "product_value" from products 
group by product_tag
order by product_value desc
limit 5;

-- 8. Which category of any specific brand is sold the most?
select product_tag, brand_tag, sum(rating_count) as "product_sold" from products 
group by brand_tag, product_tag
order by product_sold desc
limit 5;

-- 9. find the top 5 best selling brands in tshirts category?
select product_tag, brand_tag, sum(rating_count) as "product_sold", avg(discounted_price) from products 
where product_tag = "tshirts"
group by brand_tag
order by product_sold desc
limit 5;

-- 10. find the top 5 best selling brands in tshirts category?
select product_tag, brand_tag, sum(rating_count) as "product_sold", avg(discounted_price) from products 
where product_tag = "shirts"
group by brand_tag
order by product_sold desc
limit 5; 

--  11. find the frequency of a product category listed on myntra?
select product_tag, count(product_tag) as "products" from products
group by product_tag
order by products desc
limit 5;

-- 12. find the relation between rating and popularity of the products of myntra?
select rating, count(rating_count) as "products" from products
group by rating
order by rating asc;

-- 13.  find the relation between rating and popularity of the tshirts listed on myntra?
select rating,product_tag, count(rating_count) as "products" from products
where product_tag = "tshirts"
group by rating
order by rating asc;

-- 14. find the average products sold and the average price of all th etshirts listed on myntra?
select product_tag, rating, round(avg(rating_count)), round(avg(discounted_price)) from products
where product_tag = "tshirts"
group by rating
order by rating asc;

-- 15. find the the most popular brands with price more than 5000?
select brand_tag, avg(rating) as "avg_rating", sum(rating_count) from products
where discounted_price > 5000
group by brand_tag
order by avg_rating desc;

