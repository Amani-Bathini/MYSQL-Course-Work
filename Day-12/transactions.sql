-- transactions:group of aql queries as a one unit
-- follows ACID properties

-- step 1:Create database
create database if not exists bankdb;
use bankdb;
-- step2:Create Table
create table Accounts ( 
      acc_no int primary key,
      name varchar(50),
      balance decimal(10,2)
);
-- step 3 :insert sample data
insert into accounts values
(101,'Arjun',15000.00),
(102,'Priya',10000.00);

-- check initial data
select * from accounts;

select @@autocommit;
set autocommit = 0; 

-- example 1: succcessful transaction(commit)
start transaction;

-- deduct 5000 from arjun
update accounts
set balance = balance - 5000
where acc_no = 101;

-- add 5000 to priya
update accounts
set balance = balance + 5000
where acc_no = 102;

-- check before commit
select * from accounts;

-- save changes permanently
commit;


-- example2 : rollback
start transaction;

-- deduct 2000 from arjun
update accounts
set balance = balance-2000
where acc_no = 101;

-- check before rollback
select * from accounts;

-- cancel transaction
rollback;

-- check after rollback (balance should be unchanged)

-- example 3 : save point
start transaction;
-- step1 : deduct 1000
update accounts
set balance = balance - 1000
where acc_no = 101;

select * from accounts;

-- create savepoint
savepoint after_deduction;

-- step 2 : Add 1000
update accounts
set balance = balance + 1000
where acc_no = 102;

select * from accounts;

-- suppose something goes wrong
-- rollback only to savepoint
rollback to after_deduction;

-- final commit
commit;

-- final datacheck
select * from accounts;



