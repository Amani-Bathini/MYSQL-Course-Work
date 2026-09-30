-- set operations
create database details12;
use details12;

create table customers (
 id int auto_increment primary key,
 name varchar(50),
 city varchar(50)
);

create table online_customers (
  id int,
  name varchar(50)
);

create table store_customers (
  id int,
  name varchar(50)
);

insert into online_customers values
(1,'leela'),
(2,'Abhi'),
(3,'Akhila'),
(4,'Harsha'),
(5,'Reena'),
(6,'anjana'),
(7,'Amani');

insert into store_customers values
(1,'abhishek'),
(2,'rahul'),
(3,'Akhila'),
(4,'anil'),
(5,'divya'),
(6,'meena'),
(7,'reena');

-- display both tables
-- union
select name from online_customers
union
select name from store_customers;

-- unionall(gives duplicates also)
select name from online_customers
union all
select name from store_customers;

-- common elements
-- intersection
select name from online_customers
where name in(select name from store_customers);

-- difference
select name from online_customers
where name not in(select name from store_customers);

