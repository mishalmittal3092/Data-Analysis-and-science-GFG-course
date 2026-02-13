 use swiggy;
 select * from restaurants;
 
 -- 1. Create new column containing average rating of restaurants throught the dataset

select * , round(avg(rating) over(), 2) as "avg_rating" from restaurants;

-- 2. Create new column containing average rating_count of restaurants throught the dataset

select * , avg(rating_count) over() as "avg_rating_count" from restaurants;


-- 3. Create new column containing average cost of restaurants throught the dataset

select * , round(avg(cost) over(), 2) as "avg_cost" from restaurants;

-- 5. Create column containing average cost of the city where that specific restaurant is from

select * , round(avg(cost) over(partition by city), 0) as "avg_cost" from restaurants;


-- 6. Create column containing average cost of the cuisine which that specific restaurant is serving

select * , round(avg(cost) over(partition by cuisine), 0) as "avg_cost" from restaurants;

-- 8. List the restaurants whose cost is more than the average cost of the restaurants?

 select * from (select * , round(avg(cost) over(), 0) as "avg_cost" from restaurants) t where t.cost > t.avg_cost;

-- 10. List the restaurants whose cuisine cost is more than the average cost?

 select * from (select * , round(avg(cost) over(partition by cuisine), 0) as "avg_cost" from restaurants) t where t.cost > t.avg_cost;