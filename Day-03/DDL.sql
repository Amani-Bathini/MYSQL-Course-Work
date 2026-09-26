create database InstagramID;
use InstagramID;
show databases;
drop table users;
create table users(userid int primary key,
username varchar(50) unique not null,
fullname varchar(50) not null,
email varchar(100) unique not null,
password varchar(20) not null,
bio text,
isverified bool default False,
createdat datetime default current_timestamp
);

desc users;
select * from users;
-- alter
alter table users
add column Phonenumber varchar(10);
-- modify
alter table users
modify column fullname varchar(150);
-- change column
alter table users
change column  bio biography text;
-- drop column
alter table users
drop column phonenumber;
-- rename table
alter table users
rename to userinfo;
desc userinfo;
-- delete the data
truncate table userinfo;
-- delete the data amd structure
drop table userinfo;
