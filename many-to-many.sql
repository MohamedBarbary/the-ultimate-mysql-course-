CREATE TABLE reviewers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL
);

CREATE TABLE series (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50),
    released_year YEAR,
    genre VARCHAR(50)
);

CREATE TABLE reviews (
    id INT PRIMARY KEY AUTO_INCREMENT,
    rating DECIMAL(2 , 1 ) NOT NULL,
    reviewer_id INT,
    series_id INT,
    FOREIGN KEY (series_id)
        REFERENCES series (id),
    FOREIGN KEY (reviewer_id)
        REFERENCES reviewers (id)
);
SELECT 
    first_name,
    last_name,
    COUNT(*),
    IFNULL(MAX(rating), 0),
    IFNULL(MIN(rating), 0),
    ROUND(IFNULL(AVG(rating), 0), 2),
    CASE
        WHEN MAX(rating) > 0 THEN 'active'
        ELSE 'inactive'
    END AS status
FROM
    reviews
        RIGHT JOIN
    reviewers ON reviews.reviewer_id = reviewers.id
GROUP BY first_name , last_name
;
SELECT 
    genre, AVG(rating)
FROM
    series
        JOIN
    reviews ON reviews.series_id = series.id
GROUP BY genre;
SELECT 
    title
FROM
    reviews
        RIGHT JOIN
    series ON reviews.series_id = series.id
WHERE
    rating IS NULL;

SELECT 
    title,
    rating,
    CONCAT(first_name, ' ', last_name) AS reviewer
FROM
    reviews
        JOIN
    series ON reviews.series_id = series.id
        JOIN
    reviewers ON reviews.series_id = reviewers.id;
