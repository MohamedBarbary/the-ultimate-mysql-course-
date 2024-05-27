-- distinct remove duplicate 
SELECT DISTINCT
    author_lname
FROM
    books;
SELECT 
    CONCAT(author_fname, ' ', author_lname) AS fullname
FROM
    books;-- 19 rows
SELECT DISTINCT
    CONCAT(author_fname, ' ', author_lname) AS fullname
FROM
    books; -- 12 rows
    
-- solution better than concat 
SELECT DISTINCT
    author_lname , auhtor_lname
FROM
    books;
--  select x from books order by y
SELECT 
    book_id, author_fname, author_lname
FROM
    books
ORDER BY author_lname;
-- descending order 
SELECT 
    book_id, author_fname, author_lname
FROM
    books
ORDER BY author_lname DESC;

-- order by num
SELECT 
    book_id, author_fname, pages
FROM
    books
ORDER BY 3;  -- third column here is pages

-- order by multi columns (first column then second)
SELECT 
    author_lname, released_year
FROM
    books
ORDER BY author_lname , released_year;

SELECT 
    author_lname, released_year
FROM
    books
ORDER BY author_lname , released_year DESC;

SELECT 
    CONCAT(author_fname, ' ', author_lname) AS fullname
FROM
    books
ORDER BY fullname;

-- limit resaults  - limit 1 , 6  (start , count)  0 indexing
SELECT 
    book_id, title
FROM
    books
ORDER BY title
LIMIT 0 , 5;
SELECT 
    book_id, title
FROM
    books
ORDER BY title DESC
LIMIT 3 , 4;

-- like ("%",'%%', zero or more char) (_,exactly number of char)
SELECT 
    title, author_fname, author_lname
FROM
    books
WHERE
    author_fname LIKE 'da%';

SELECT 
    *
FROM
    books
WHERE
    author_fname LIKE '____'; -- author_fname 4 char
    
-- select % and _ from content 
SELECT 
    *
FROM
    books
WHERE
    title LIKE '%\%%';
    

    
-- section challenge
SELECT 
    title
FROM
    books
WHERE
    title LIKE '%stories%';
SELECT 
    title, pages
FROM
    books
ORDER BY pages DESC
LIMIT 1;
SELECT 
    *
FROM
    books;
SELECT 
    CONCAT(title, ' - ', released_year) AS summary
FROM
    books
ORDER BY released_year DESC
LIMIT 3;
SELECT 
    title, author_lname
FROM
    books
WHERE
    author_lname LIKE '% %';
SELECT 
    title, released_year, stock_quantity
FROM
    books
ORDER BY stock_quantity
LIMIT 3;
SELECT 
    title, author_lname
FROM
    books
ORDER BY author_lname , title;
SELECT 
    CONCAT('My FAVOURITE AUTHOR IS ',
            UPPER(author_fname),
            ' ',
            UPPER(author_lname),
            ' !') AS yell
FROM
    books
ORDER BY author_lname;