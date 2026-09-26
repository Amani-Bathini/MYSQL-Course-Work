-- Str Functions
-- 1.char_length(str) or character_length(str)
select char_length("Hello"); -- 5
select char_length('😊'); -- 1(counts one character)
-- 2.concat(str1,str2,...)
select concat('MY','SQL'); -- MYSQL
select concat('python',' ','programming',' ','lang');
-- 3.concat_ws(separator,str1,str2,....)
select concat_ws('-','2025','09','23');
select concat_ws(',','python','java','dsa','html');
-- 4.upper(str)
select upper('hello');
-- 5.lower(str)
select lower('HELLO');
-- 6.left(str,len)
select left('Database',2);
-- 7.right(str,len)
select right('Database',5);
-- 8.substring(str,start,length)
select substring('Database',5);
select substring('Python programming lang',10,7);
-- 9.locate(substr,str)
select locate('a','Database');
-- 10.replace(str,from_str,to_str)
select replace('xxxxxxxxxxxxxxHexxxxxxlloxx','x','');
-- 11.trim([leading | trailing | both] remstr from str)
select trim(' Hello    world    ');
-- 12. ltrim(str)
select ltrim(' Hello');
-- 13.rtrim(str)
select rtrim('MYSQL   ');
-- 14.reverse(str)
select reverse('MYSQL');
-- 15.lpad(str,len,padstr)
select lpad('1238',10,'-');
-- 16.rpad(str,len.padstr)
select rpad('12345',8,'*');
-- 17.repeat(str,count)
select repeat('MYSQL-',3);



