create database flipkart34;
use flipkart34;

-- system functions
select version();
select database();
select user();
select connection_id();

-- last_insert id
create table customers (
 id int auto_increment primary key,
 name varchar(50),
 city varchar(50)
);

insert into customers(name,city)
values('rahul','Hyderabad');

select last_insert_id();

insert into customers(name,city)
values('Priya','Chennai');

select last_insert_id();

