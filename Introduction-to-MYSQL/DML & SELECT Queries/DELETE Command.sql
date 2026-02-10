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
	(1, 'Mishal' , 'Mittal',12312312, 'mishal@gmail.com'),
    (2, 'Abhay' , 'Agrahari' ,53343322, 'abhay@gmail.com'),
    (3, 'Mayur', 'Dange' ,92384022, 'mayur@gmail.com'),
    (4, 'Samruddha' , 'Musale'  ,93457334, 'musale@gmail.com'),
    (5, 'Rajan', 'Gupta' ,79834934, 'rajan@gmail.com');
    
select * from gfg.user;

-- Delete row based on user_id
delete from gfg.user where user_id = 5;
select * from gfg.user;

-- Delete row based on name
delete from gfg.user where first_name = 'Mayur';
select * from gfg.user;

-- Delete rows based on phone_no
delete from gfg.user where phone_number > 60000000;
select * from gfg.user;