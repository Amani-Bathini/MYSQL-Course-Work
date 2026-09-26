-- inner join:retrieving the infromtn frm diff table when we want common records 
-- equi join:use equal to symbol (==)
-- non-equi:rather than = (like <,>,<=,...)
-- natural join:whenever we have common column names and datatypes
-- self join-same table different representation
-- outer join
  -- leftjoin-left side data,right side common elements(if not there it returns null)
  -- right join-right side data
  -- full join-irrsepective of common elements,we combining the data from 2 tables
-- cross-combining the combinations of the columns 

-- -------------------------------------------------------------------------------------------------------
CREATE DATABASE join_practice;
USE join_practice;
CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(100),
    city VARCHAR(100)
);
CREATE TABLE posts (
    post_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    caption VARCHAR(255),
    foreign key (user_id) references users(user_id)
);
INSERT INTO users (username, city) VALUES
('rahul', 'Hyderabad'),
('sneha', 'Bangalore'),
('arjun', 'Chennai'),
('meena', 'Mumbai'),
('kiran', 'Delhi'),
('anita', 'Pune'),
('vikram', 'Kolkata'),
('divya', 'Jaipur'),
('rohit', 'Ahmedabad'),
('pooja', 'Lucknow');
INSERT INTO posts (user_id, caption) VALUES
(1, 'Morning workout'),
(2, 'Learning SQL joins'),
(3, 'Data analytics journey'),
(1, 'Weekend trip'),
(4, 'Office presentation'),
(5, 'Startup ideas'),
(1, 'Test post without valid user'),
(3, 'Python practice'),
(7, 'Cloud computing basics'),
(2, 'Another invalid user post');
select * from posts;
select * from users;
-- inner join
select u.username,p.caption
from users u inner join posts p
on u.user_id = p.user_id;
-- equi join
select u.username,p.caption
from users u,posts p
where u.user_id = p.user_id;
-- natural
select *
from users
natural join posts;
-- left join
select u.username,p.caption from users u
left join posts p
on u.user_id = p.user_id;
-- right join
select u.username,p.caption
from users u right join posts p 
on u.user_id = p.user_id;
-- full join/union
select username as text_data from users
union
select caption from posts;
-- cross join
select u.username, p.caption
from users u
cross join posts p;

