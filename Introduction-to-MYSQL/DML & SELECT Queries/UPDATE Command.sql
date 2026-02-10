use gfg;
DROP TABLE IF EXISTS gfg.user;

CREATE TABLE gfg.user (
    user_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone_number VARCHAR(15),
    email VARCHAR(100));


INSERT INTO gfg.user (user_id ,first_name, last_name, phone_number, email)
VALUES
    (1, 'Mishal' , 'Mittal',12312312, 'mishal@gmail.com' ),
    (2, 'Abhay' , 'Agrahari' ,53343322, 'abhay@gmail.com' ),
    (3, 'Mayur', 'Dange' ,92384022, 'mayur@gmail.com'   ),
    (4, 'Samruddha' , 'Musale'  ,93457334, 'musale@gmail.com' ),
    (5, 'Rajan', 'Gupta' ,79834934, 'rajan@gmail.com');
    
select * from gfg.user;

 -- Update the username with user_id = 1
 update gfg.user set first_name = 'Mrinal' where user_id = 1;
 select * from gfg.user;

--  Update two columns
 update gfg.user set first_name = 'Mishal', phone_number = 1565465165 where user_id = 1;
 select * from gfg.user;
 
-- updating multiple columns in once
update gfg.user 
set first_name = 'Mrinal', phone_number = 7015012310, last_name = 'Rajak' 
where user_id = 1;
select * from gfg.user;

-- Update based on name
update gfg.user 
set first_name = 'Mishal', phone_number = 7015012310, last_name = 'Rajak' 
where first_name = 'Mrinal';
select * from gfg.user;

-- Update based on phone no
update gfg.user 
set first_name = 'Mrinal', phone_number = 70150123, last_name = 'Mittal' 
where phone_number = 7015012310;
select * from gfg.user;