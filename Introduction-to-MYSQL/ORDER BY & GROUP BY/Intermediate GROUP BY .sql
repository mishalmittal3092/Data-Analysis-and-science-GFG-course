use gfgpractise;
select * from products;


# 1. Which product_category of any brand is sold the most?

select product_tag, brand_name, sum(rating_count) as "sold" from products 
group by product_tag, brand_name 
order by sold desc;

# 2. List top 5 brands which has sold most number of tshirts

select brand_name , product_tag, sum(rating_count) as "sold" from products
where product_tag = "tshirts" 
group by brand_name 
order by sold desc;

# 3. List top 5 brands which has sold most number of shirts

select brand_name , product_tag, sum(rating_count) as "sold" from products
where product_tag = "shirts" 
group by brand_name 
order by sold desc;

# 4. List top 5 brands which has sold most number of jeans

select brand_name , product_tag, sum(rating_count) as "sold" from products
where product_tag = "jeans" 
group by brand_name 
order by sold desc;


# 5. List top 5 brands which has sold most number of dresses

select brand_name , product_tag, sum(rating_count) as "sold" from products
where product_tag = "dresses" 
group by brand_name 
order by sold desc;


# 6. Most popular product name listed in Myntra

select product_name , count(product_name) as "popular" from products 
group by product_name 
order by popular desc;

# 7. Number of products sold for every rating (0 - 5)

select rating, sum(rating_count) as "products_sold" from products 
group by rating
order by rating desc;

# 8. Number of products sold for every rating by nike

select rating, sum(rating_count) as "products_sold" from products 
where brand_name = "nike"
group by rating
order by rating desc;

# 9. Number of products sold for every rating in tshirt category

select rating, sum(rating_count) as "products_sold" from products 
where product_tag = 'tshirts'
group by rating
order by rating desc;

# 10 Relation between price of the thisrt and its rating with respect to people rated

select rating, discounted_price, sum(rating_count) as "products_sold" from products 
where product_tag = 'tshirts'
group by rating , discounted_price
order by rating desc;








