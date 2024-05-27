-- char (fixed in length) (same size even if it small at size  :(  )
--  varchar (specify string length) (extra byte :( )
-- so if you storing in momery & size
CREATE TABLE stats (
    abber CHAR(2)
); -- always store 2 char with 2 bytes
insert into stats (abber) values ('co'),('ca'),('k'); 

-- int (4 bytes 2^31) & TinyInt (1 byte 2^7)
-- Bigint  (8 btyes)
CREATE TABLE parent (
    childern TINYINT
);
insert into parent (childern) values (4),(5),(7);
CREATE TABLE parents (
    childern TINYINT UNSIGNED
); -- postive only

-- decimal (x,y) x =  max total , y = max decimal of total
-- for very accurate operation use decimal 
CREATE TABLE products (
    price DECIMAL(5 , 2 )
);
insert into products (price) values (333.4);
SELECT 
    *
FROM
    products; -- 333.40

-- float & double  --> less memory than decimal and speed more
-- float (4 btyes & precision issus after 7 digits)
--  double (8 bytes & precision issus after 15 digits)
CREATE TABLE numbers (
    x FLOAT,
    y DOUBLE
);
insert into numbers (x,y) values (1.2222233334,1.333222222224);
SELECT 
    *
FROM
    numbers; 
    
-- dates & time
-- date 'YYYY:MM:DD'
-- time 'HH:MM:SS'
-- DateTime 'YYYY:MM:DD HH:MM:SS'
CREATE TABLE people (
    name VARCHAR(50),
    birthdate DATE,
    birthtime TIME,
    birthdt DATETIME
);
insert into people 
     (name,birthdate,birthtime,birthdt)
     values('kim','2005-8-20' , '19:30:5'  , '2005-8-20 19:30:5');
     
insert into people 
     (name,birthdate,birthtime,birthdt)
     values('omir', curdate() ,curtime()  , now());
     
SELECT 
    *
FROM
    people;
    
-- date function 
SELECT 
    birthdate,
    DAY(birthdate),
    DAYOFWEEK(birthdate),
    DAYOFYEAR(birthdate) people;
SELECT 
    birthdate,
    DAYNAME(birthdate),
    MONTHNAME(birthdate),
    YEAR(birthdate),
    YEAR(birthdt)
FROM
    people;
    
-- time functions
SELECT 
    name, birthtime, HOUR(birthtime), MINUTE(birthtime)
FROM
    people;
SELECT 
    name, birthdt, HOUR(birthdt), MINUTE(birthdt)
FROM
    people;

-- choose my format like (april 11 2002)
SELECT 
    birthdate, DATE_FORMAT(birthdate, '%b')
FROM
    people;-- monthName
SELECT 
    birthdate, DATE_FORMAT(birthdate, '%a %b')
FROM
    people;-- dayName monthName
SELECT 
    birthdate, DATE_FORMAT(birthdate, '%a %b %D')
FROM
    people;-- dayName monthName 13th , 14th
SELECT 
    birthtime, DATE_FORMAT(birthdt, '%H:%i')
FROM
    people;-- 24 time format
SELECT 
    birthtime, DATE_FORMAT(birthdt, '%r')
FROM
    people; -- hh:m:ss am | pm
    
-- Date Math (important)
SELECT 
    DATEDIFF(CURDATE(), birthdate)
FROM
    people;
SELECT 
    DATE_ADD(CURDATE(), INTERVAL 1 YEAR),
    DATE_SUB(CURDATE(), INTERVAL 1 YEAR);
SELECT TIMEDIFF(CURTIME(), '07:00:00');
SELECT 
    birthdate, DATE_ADD(birthdate, INTERVAL 18 YEAR)
FROM
    people;
SELECT NOW() - INTERVAL 18 YEAR;
SELECT 
    name,
    birthdate,
    YEAR(birthdate + INTERVAL 21 YEAR) AS legall
FROM
    people;

-- timestamp (less than datetime cause its rang from 1970 to 2038)

-- using default timestamp 
CREATE TABLE captions (
    text VARCHAR(100),
    create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

insert into captions (text) values ('one two three');
select * from captions ; 

-- using update_at 
CREATE TABLE captions2 (
    text VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
insert into captions2 (text) values ('one two three');
update captions2 set text = 'i love live';
select * from captions2 ; 

-- chapter challenge 
SELECT CURRENT_DATE();
SELECT CURRENT_TIME();
SELECT DAYOFWEEK(NOW());
SELECT DATE_FORMAT(NOW(), '%m %d %y %r');
select date_format(now() , '%M %D at %h:%m');
CREATE TABLE tweet (
    content VARCHAR(180),
    userName VARCHAR(40),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
