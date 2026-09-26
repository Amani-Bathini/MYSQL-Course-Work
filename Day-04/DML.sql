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

create table posts (
postid bigint primary key,
userid int not null,
caption text,
imageurl varchar(255) not null,
likescount int default 0,
createdat timestamp default current_timestamp,
foreign key (userid) references users(userid)
);

create table comments(
commentid int primary key,
postid bigint not null,
userid int not null,
commenttext varchar(255) not null,
createdat datetime default current_timestamp,
foreign key (postid) references posts(postid),
foreign key (userid) references users(userid)
);

insert into users(userid,username,fullname,email,password)
value(1,'amani','amani','amani@gmail.com','amani123');
insert into users(userid,username,fullname,email,password)
values
(2,'sri','sri','sri@gmail.com','sri123'),
(3,'anjana','anjana','anjana@gmail.com','anjana123'),
(4,'akhila','akhila','akhila@gmail.com','akhila123');
select * from users;

insert into users(userid,username,fullname,email,password,bio,isverified,createdat)
values
(5,'manasa','manasa','manasaa@gmail.com','manasa123',"python is programming language",True,'2026-09-12 09:41:39'),
(7,'abhi','abhi','abhi@gmail.com','abhi123',"python coder",True,'2026-09-10 09:52:25');

update users
set bio = 'coder'
where userid = 2;

update users
set isverified = True
where userid = 3;

update users
set password = "abhi@123"
where email = 'abhi@gmail.com';

select @@sql_safe_updates;
set sql_safe_updates = 0;
update users 
set isverified = True;

delete from users
where email = 'manasa@gmail.com';

delete from users
where fullname = 'sri';

delete from users
where isverified = 1;
select * from users
