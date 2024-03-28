-- not equal 
SELECT 
    title, released_year
FROM
    books
WHERE
    released_year != 2017;

-- not like 
SELECT 
    title
FROM
    books
WHERE
    title NOT LIKE '% %';
SELECT 
    author_fname
FROM
    books
WHERE
    author_fname NOT LIKE 'da%';
SELECT 
    title
FROM
    books
WHERE
    title NOT LIKE '%e%';

-- greater & less
SELECT 
    *
FROM
    books
WHERE
    released_year > 2005;
SELECT 
    *
FROM
    books
WHERE
    pages > 400;
 
SELECT 1 > NULL; -- null because (we compare 1 with nothing)

SELECT 
    title
FROM
    books
WHERE
    released_year < 2005;
SELECT 
    title
FROM
    books
WHERE
    released_year >= 2010;
SELECT 
    title
FROM
    books
WHERE
    released_year <= 2010;

-- logical operators 
SELECT 
    title, author_lname, released_year
FROM
    books
WHERE
    author_lname = 'Eggers'
        AND released_year > 2010;
        
SELECT 
    title, author_lname, released_year
FROM
    books
WHERE
    author_lname = 'Eggers'
        AND released_year > 2010
        AND title LIKE '%novel%';
        
SELECT 
    title
FROM
    books
WHERE
    CHAR_LENGTH(title) > 30 AND pages > 400;


SELECT 
    title, author_lname, released_year
FROM
    books
WHERE
    author_lname = 'Eggers'
        OR released_year > 2010;
        

-- between 
SELECT 
    title, released_year
FROM
    books
WHERE
    pages BETWEEN 2004 AND 2018;

-- comparing dates & time using cast 
SELECT CAST('09:00:00' AS TIME);
SELECT 
    *
FROM
    people
WHERE
    birthtime BETWEEN CAST('12:00:00' AS TIME) AND CAST('16:00:00' AS TIME);
SELECT 
    *
FROM
    people
WHERE
    YEAR(birthdate) < 2005;
SELECT 
    *
FROM
    people
WHERE
    birthtime < '12:00:00';
SELECT 
    *
FROM
    people
WHERE
    HOUR(birthtime) < 2005;
    
-- using IN
SELECT 
    title, author_lname
FROM
    books
WHERE
    author_lname IN ('Carver' , 'Lahiri', 'Smith');
SELECT 
    title, author_lname
FROM
    books
WHERE
    author_lname NOT IN ('Carver' , 'Lahiri', 'Smith');
 SELECT 
    released_year
FROM
    books
WHERE
    released_year BETWEEN 2000 AND 2018
        AND released_year % 2 = 1;
    
 -- case statment    
SELECT 
    title,
    released_year,
    CASE
        WHEN released_year >= 2000 THEN 'modern lit'
        ELSE 'who good'
    END AS genre
FROM
    books;

SELECT 
    title,
    stock_quantity,
    CASE
        WHEN stock_quantity BETWEEN 0 AND 40 THEN '*'
        WHEN stock_quantity BETWEEN 41 AND 70 THEN '**'
        WHEN stock_quantity BETWEEN 71 AND 100 THEN '***'
        WHEN stock_quantity BETWEEN 101 AND 140 THEN '****'
        ELSE '*****'
    END AS stock
FROM
    books;
    
-- IS NUll 
SELECT 
    *
FROM
    books
WHERE
    author_lname IS NULL;
DELETE FROM books 
WHERE
    author_lname IS NULL; 
    
    
--  chapter challenge 
SELECT 
    *
FROM
    books
WHERE
    released_year < 1980;
SELECT 
    *
FROM
    books
WHERE
    author_lname IN ('Eggers' , 'Chabon');
SELECT 
    *
FROM
    books
WHERE
    pages BETWEEN 100 AND 200;
SELECT 
    *
FROM
    books
WHERE
    author_lname LIKE 'C%' OR 'S%';
SELECT 
    title,
    author_lname,
    CASE
        WHEN title LIKE '%stories%' THEN 'short story'
        WHEN title LIKE '%kids%' THEN 'memoir'
        ELSE 'novel'
    END AS type
FROM
    books;
SELECT 
    author_fname,
    author_lname,
    CASE
        WHEN COUNT(*) > 1 THEN CONCAT(COUNT(*), ' books')
        ELSE '1 book'
    END AS count
FROM
    books
GROUP BY author_fname , author_lname;