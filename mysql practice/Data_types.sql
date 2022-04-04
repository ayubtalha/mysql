-- CREATE TABLE people (
--     name VARCHAR(100),
--     birthDate DATE,
--     birthTime TIME,
--     birthdt DATETIME
-- );

-- INSERT INTO people (name, birthdate, birthtime, birthdt) VALUES
-- ('khan', "2022-12-19", "05:12:57", "2022-12-19 05:12:57" );

-- SELECT now()

-- SELECT 
--     name,
--     birthdate,
--     birthtime,
--     birthdt,
--     DAYNAME(birthdate),
--     DAY(birthdate),
--     DAYOFWEEK(birthdate),
--     DAYOFYEAR(birthdate),
--     MONTH(birthdate),
--     MONTHNAME(birthdate)
-- FROM
--     people

-- SELECT 
--     DATE_FORMAT(birthdt, '%m/%d/%y')
-- FROM
--     people

-- SELECT 
--     DATE_FORMAT(birthdt, '%m/%d/%Y at %h:%i')
-- FROM
--     people;

-- SELECT 
--     birthdt, DATE_ADD(birthdt, INTERVAL 1 MONTH)
-- FROM
--     people

-- CREATE TABLE comments (
--     content VARCHAR(100),
--     created_at TIMESTAMP DEFAULT NOW()
-- )

-- insert into comments (content) values ("I have written a content")

-- SELECT 
--     *
-- FROM
--     comments

-- SELECT CURRENT_TIME()

-- SELECT CURRENT_DATE()

-- SELECT DAYOFWEEK(NOW())

-- SELECT DATE_FORMAT(NOW(), '%M %D at %h:%i')

-- CREATE TABLE tweets (
--     content VARCHAR(140),
--     username VARCHAR(20),
--     created_at TIMESTAMP DEFAULT NOW()
-- )

-- insert into tweets (content, username) values ("I am loggan","Talha Ayub")

-- SELECT 
--     *
-- FROM
--     tweets

-- SELECT 
--     title, released_year
-- FROM
--     books
-- WHERE
--     released_year != 2017

-- SELECT 
--     title
-- FROM
--     books
-- WHERE
--     title LIKE 'w%'

-- SELECT 
--     title
-- FROM
--     books
-- WHERE
--     title NOT LIKE 'w%'

-- SELECT 
--     name, birthdt
-- FROM
--     people
-- WHERE
--     birthdt BETWEEN CAST('1980-12-3' AS DATETIME) AND CAST('2000-01-01' AS DATETIME)

-- SELECT 
--     title, author_lname
-- FROM
--     books
-- WHERE
--     author_lname IN ('carver' , 'lahiri', 'smith')

-- SELECT 
--     title,
--     released_year,
--     CASE
--         WHEN released_year >= 2000 THEN 'Modern Lit'
--         ELSE '20th century lit'
--     END AS 'Genre'
-- FROM
--     books

-- SELECT 
--     title,
--     stock_quantity,
--     CASE
--         WHEN stock_quantity between 0 and 50 THEN '*'
--         WHEN stock_quantity between 51 and 100 THEN '*'
--         else '***'
--     END AS 'Genre'
-- FROM
--     books

-- SELECT 
--     title, author_lname
-- FROM
--     books
-- WHERE
--     author_lname = 'eggers'
--         OR author_lname = 'chabon'

-- SELECT 
--     title, author_lname
-- FROM
--     books
-- WHERE
--     author_lname IN ('eggers' , 'chabon')

-- SELECT 
--     title, author_lname
-- FROM
--     books
-- WHERE
--     author_lname LIKE 'C%'
--         OR author_lname LIKE 'S%'

-- SELECT 
--     title, author_lname
-- FROM
--     books
-- WHERE
--     SUBSTR(author_lname, 1, 1) IN ('C' , 'S')

-- SELECT 
--     author_lname,
--     CASE
--         WHEN COUNT(*) = 1 THEN CONCAT(COUNT(*), ' book')
--         ELSE CONCAT(COUNT(*), ' books')
--     END
-- FROM
--     books
-- GROUP BY author_lname