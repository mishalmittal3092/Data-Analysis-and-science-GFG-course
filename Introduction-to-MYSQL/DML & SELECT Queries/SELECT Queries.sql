use gfgpractise;

-- Showing the Dataset
select * from products;
select * from products where 1;

-- showing specific columns
select product_name,brand_name from products;

-- showing specific column in specific order
select brand_name, product_name from products;

-- create new column with mathemtical functions | Making Discounted Amount
select brand_name, marked_price, discounted_price , marked_price - discounted_price AS 'discounted_amount' from products;

-- create new column with mathemtical functions | Making Rating Count * Rating
select product_name, rating, rating_count , rating * rating_count AS 'rating_filter' from products;

-- create new column with mathemtical functions | Making Discount Percentage
select brand_name, marked_price, discounted_price , ((marked_price - discounted_price)/marked_price)*100 AS 'discount_percentage' from products;

-- Finding UNIQUE values
select DISTINCT(brand_name) AS 'brand_names' from products;

-- Adding Where Clause
select product_name, marked_price, discounted_price from products where brand_tag = 'Adidas';

-- Adding Distinct with Where | Unique Products served by Adidas
select DISTINCT(product_tag) from products where brand_tag = 'Adidas';

-- Adding Distinct with Where | Unique Products served by Adidas
select count(DISTINCT(product_tag)) from products where brand_tag = 'Adidas';

-- Products with Multiple Where Clause with AND
select product_tag,product_name,discounted_price from products where brand_tag = 'Adidas' AND discounted_price > 5000;
select product_tag,product_name,discounted_price from products where discounted_price < 8000 AND discounted_price > 5000;

-- Products with BETWEEN
select product_tag,product_name,discounted_price from products where discounted_price between 3000 AND 8000;

-- Adding filters using AND Clause
select product_tag,product_name,discounted_price,rating from products 
where (discounted_price between 3000 AND 8000) 
AND brand_tag = 'Adidas'
AND rating > 4;

-- Adding filters using multiple AND Clause
select product_tag,product_name,discounted_price,rating, rating_count from products 
where (discounted_price between 3000 AND 8000) 
AND brand_tag = 'Adidas'
AND rating > 4
AND rating_count > 10;

-- Using OR
select product_name,product_tag, brand_tag, discounted_price  from products 
where (brand_tag = 'adidas' OR brand_tag = 'puma') AND (discounted_price between 3000 AND 5000);

-- Using NOT
select product_name,product_tag, brand_tag, discounted_price  from products 
where NOT(brand_tag = 'adidas' OR brand_tag = 'puma') AND (discounted_price between 3000 AND 5000);

-- Using IN
select product_name,product_tag, brand_tag, discounted_price  from products 
where brand_tag IN('adidas','puma');

-- Using NOT IN
select product_name,product_tag, brand_tag, discounted_price  from products 
where brand_tag NOT IN('adidas','puma');