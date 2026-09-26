-- 1.current date / current
select current_date();
select curdate();
-- 2.current_time / curtime
select current_time();
select curtime();
-- 3.now() / current_timestamp
select now();
select current_timestamp();
-- 4.date()
select date('2026-02-12');
-- 5.time()
select time('2025-09-23 15:45:00');
-- 6.year(),month(),day()
select year(now());
select month(now());
select day(now());
-- 7.dayname(),monthname()
select dayname(now());
select monthname(now());
-- 8.date_add() / adddate()
-- units : second,minute,hour,day,week,month,quarter,year
select date_add(now(), interval 20 day);
select adddate(now(), interval 2 month);
-- 9,date_sub() / subdate()
select date_sub(now(),interval 7 day);
select subdate(now(),interval 2 month);
-- 10.datediff()
select datediff(now(),'2026-09-12');
-- 11.timediff()
select timediff('10:30:00','09:15:00');
-- 12.str_to_date()
select str_to_date('2026-03-30', '%Y-%m-%d');
-- 13.date_format()
select date_format('2025-09-23','%W %M %Y'); -- Tuesday September 2025
select date_format(now(),'%d-%m-%Y %H:%i:%s');
