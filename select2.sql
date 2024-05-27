-- count num of rows (only one resault)  
SELECT 
    COUNT(*)
FROM
    books;
SELECT 
    COUNT(author_fname)
FROM
    books;-- count not null vlaue
SELECT 
    COUNT(DISTINCT author_fname)
FROM
    books;
SELECT 
    COUNT(DISTINCT title)
FROM
    books
WHERE
    title LIKE '%the%';

-- group by 
SELECT 
    author_lname, COUNT(*)
FROM
    books
GROUP BY author_lname;

SELECT 
    released_year, COUNT(*)
FROM
    books
GROUP BY released_year;

-- min 
SELECT 
    MIN(released_year)
FROM
    books;
SELECT 
    MAX(pages)
FROM
    books;

-- duplicate the value of max pages             
insert into books (title , pages) values ("hello world",634);

-- subquery (code runs subquery first)
SELECT 
    title, pages
FROM
    books
WHERE
    pages = (SELECT 
            MAX(pages)
        FROM
            books);
		

-- multi group by 
SELECT 
    author_lname, COUNT(*)
FROM
    books
GROUP BY author_lname , author_fname;-- group by select in query
SELECT 
    author_lname, COUNT(*)
FROM
    books
GROUP BY author_lname , author_fname , title;-- output : 1 1 1 1  
SELECT 
    CONCAT(author_fname, ' ', author_lname) AS author, COUNT(*)
FROM
    books
GROUP BY author;

-- min max & group by 

SELECT 
    author_lname , author_fname , min(released_year)   -- min will return one value for each group
FROM
    books
GROUP BY author_lname , author_fname ;

SELECT 
    author_lname,
    COUNT(*) AS books_number,
    MIN(released_year) AS eairiest_book,
    MAX(pages) AS largest_pages
FROM
    books
GROUP BY author_lname , author_fname;

-- sum (numbers)
SELECT 
    SUM(pages)
FROM
    books;
SELECT 
    SUM(author_lname)
FROM
    books;-- 0 
SELECT 
    author_lname, SUM(pages)
FROM
    books
GROUP BY author_lname;

-- avg (num/count)
SELECT 
    AVG(released_year), AVG(pages)
FROM
    books;
SELECT 
    released_year, AVG(stock_quantity), COUNT(*)
FROM
    books
GROUP BY released_year;

-- section challenge 
SELECT 
    COUNT(*)
FROM
    books;-- 23
SELECT 
    released_year, COUNT(*)
FROM
    books
GROUP BY released_year;
SELECT 
    SUM(stock_quantity)
FROM
    books;-- 2450
SELECT 
    CONCAT(author_fname, ' ', author_lname) AS author,
    AVG(released_year) 
FROM
    books
GROUP BY author_fname , author_lname;

SELECT 
    CONCAT(author_fname, ' ', author_lname)
FROM
    books
WHERE
    pages = (SELECT 
            MAX(pages)
        FROM
            books);-- micheal chabon
SELECT 
    released_year AS year,
    COUNT(*) AS '# books',
    AVG(pages) AS 'avg pages'
FROM
    books
GROUP BY released_year
ORDER BY released_year; 

