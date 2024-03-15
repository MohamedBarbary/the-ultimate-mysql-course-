-- concat (x,y,z)
SELECT 
    CONCAT(author_fname, ' ', author_lname) AS full_name
FROM
    books;
                
-- concat with seprator ('seprator',x,y,z)
-- better use in slay
SELECT 
    CONCAT_WS(' _', title, author_fname, author_lname)
FROM
    books;

-- substring (stringValue,start,end) -- indexing (1,2,3)
SELECT SUBSTRING('hello world', 2, 5);
SELECT 
    SUBSTR(title, 1, 15)
FROM
    books;

-- concat and substr
SELECT 
    CONCAT(SUBSTR(title, 1, 15), '...') AS cool_title
FROM
    books;
SELECT 
    CONCAT(SUBSTR(author_fname, 1, 1),
            '.',
            SUBSTR(author_lname, 1, 1),
            '.') AS full_name
FROM
    books;
    
-- replace (case senstive) (word , str-from , str-to)
SELECT 
    REPLACE('chees bread coffe milk',
        ' ',
        ' and ');
SELECT 
    REPLACE(title, ' ', '_')
FROM
    books;
    
-- reverse (string)
SELECT REVERSE(NULL);-- resault : null
SELECT 
    REVERSE(author_fname)
FROM
    books;
    
--  *char_length (return 10base length)& length (return bits)
SELECT 
    CHAR_LENGTH(title) AS len
FROM
    books;

-- upper (string)  & lower (string)
SELECT 
    CONCAT('I LOVE ', UPPER(title), ' !!!')
FROM
    books;
SELECT 
    LOWER(title)
FROM
    books;

-- trim (remove edges spaces)
SELECT TRIM('   hellooo  ');

-- insert (stringOrigin , pos = num , number of repalced charcaters , stringAdd)
SELECT INSERT('hello world', 6, 0, ' there ');
SELECT INSERT('hello world', 6, 5, ' there ');-- hello there d

SELECT 
    LEFT(author_fname, 1)
FROM
    books;
SELECT 
    RIGHT(author_fname, 1)
FROM
    books;


-- Section Challenge
 select upper(reverse('why does my cat look at me with such hatred?'));
-- 2 : I_like_cats 
SELECT 
    REPLACE(title, ' ', '->') AS title
FROM
    books;
SELECT 
    author_lname AS forwards, REVERSE(author_lname) AS backwords
FROM
    books;
SELECT 
    UPPER(CONCAT(author_fname, ' ', author_lname)) AS fullname_in_cap
FROM
    books;
SELECT 
    CONCAT(title,
            ' was released in ',
            released_year) AS blurb
FROM
    books;
SELECT 
    title, CHAR_LENGTH(title) AS counter_count
FROM
    books;
SELECT 
    CONCAT(LEFT(title, 10), '...') AS short_title,
    CONCAT(author_lname, ',', author_fname) AS author,
    CONCAT(stock_quantity, ' in stock')
FROM
    books;