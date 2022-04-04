-- SELECT 
--     CONCAT_WS(' -  ',
--             title,
--             author_fname,
--             author_lname)
-- FROM
--     books;

-- SELECT 
--     CONCAT(SUBSTRING(title, 1, 10), ' ...') AS 'short title'
-- FROM
--     books; 

-- SELECT 
--     SUBSTR(REPLACE(title, 'a', 3), 1, 10)
-- FROM
--     books;

-- SELECT 
--     title, CHAR_LENGTH(title) AS 'Char Lnegth'
-- FROM
--     books;

-- SELECT 
--     LOWER(title)
-- FROM
--     books;

-- SELECT UPPER(REVERSE('why is my cat'));

-- SELECT 
--     REPLACE(CONCAT('I', ' ', 'like', ' ', 'cats'),
--         ' ',
--         '-');

-- SELECT 
--     replace(title, ' ', '->')
-- FROM
--     books;

-- SELECT 
--     (author_lname) AS forwards,
--     REVERSE(author_lname) AS backwards
-- FROM
--     books;

-- SELECT 
--     UPPER(CONCAT(author_lname, ' ', author_fname)) AS 'full name in caps'
-- FROM
--     books;

-- SELECT 
--     CONCAT(title,
--             ' was released in ',
--             released_year) AS 'blurb'
-- FROM
--     books;

-- SELECT 
--     title, CHARACTER_LENGTH(title) AS 'character count'
-- FROM
--     books;

-- SELECT 
--     CONCAT(SUBSTRING(title, 1, 10), ' ...') AS 'short title',
--     CONCAT(author_lname, ',', author_fname) AS author,
--     CONCAT(stock_quantity, ' in stock') AS quantity
-- FROM
--     books;


-- SELECT DISTINCT author_lname,author_fname FROM books; 

-- SELECT 
--     title, author_fname
-- FROM
--     books
-- WHERE
--     author_fname LIKE '%da%';

-- SELECT 
--     title, pages
-- FROM
--     books
-- WHERE
--     title LIKE '%stories%';

-- SELECT 
--     title, pages
-- FROM
--     books
-- ORDER BY pages DESC
-- LIMIT 1;

-- SELECT 
--     CONCAT(title, ' - ', released_year) AS summary
-- FROM
--     books
-- ORDER BY released_year DESC
-- LIMIT 3;

-- SELECT 
--     title, author_lname
-- FROM
--     books
-- WHERE
--     author_lname LIKE '% %';

-- SELECT 
--     title, released_year, stock_quantity
-- FROM
--     books
-- ORDER BY stock_quantity
-- LIMIT 3;

-- SELECT 
--     title, author_lname
-- FROM
--     books
-- ORDER BY author_lname , title;

-- SELECT 
--     UPPER(CONCAT('MY FAVORITE AUTHOR IS ',
--                     author_fname,
--                     ' ',
--                     author_lname,
--                     '!'))
-- FROM
--     books
-- ORDER BY author_lname;

-- SELECT 
--     COUNT(*)
-- FROM
--     books
-- WHERE
--     title LIKE '%the%';

-- SELECT 
--     author_fname, author_lname, COUNT(*)
-- FROM
--     books
-- GROUP BY author_fname , author_lname;
 
--  SELECT 
--     released_year, COUNT(*)
-- FROM
--     books
-- GROUP BY released_year

-- SELECT 
--     MAX(pages)
-- FROM
--     books;

-- SELECT 
--     pages, title
-- FROM
--     books
-- WHERE
--     pages = (SELECT 
--             MAX(pages)
--         FROM
--             books);

-- SELECT 
--     author_lname, author_fname, MIN(released_year)
-- FROM
--     books
-- GROUP BY author_lname , author_fname

-- SELECT 
--     SUM(stock_quantity)
-- FROM
--     books 

-- SELECT 
--     author_lname, author_fname, SUM(pages)
-- FROM
--     books
-- GROUP BY author_lname , author_fname

-- SELECT 
--     AVG(stock_quantity)
-- FROM
--     books;

-- SELECT 
--     released_year, AVG(stock_quantity)
-- FROM
--     books
-- GROUP BY released_year
    
-- SELECT 
--     COUNT(*)
-- FROM
--     books

-- SELECT 
--     released_year, COUNT(*)
-- FROM
--     books
-- GROUP BY released_year

-- SELECT 
--     SUM(stock_quantity)
-- FROM
--     books

-- SELECT 
--     author_fname, author_lname, AVG(released_year)
-- FROM
--     books
-- GROUP BY author_lname , author_fname

-- SELECT 
--     author_lname, author_fname, pages
-- FROM
--     books
-- WHERE
--     pages = (SELECT 
--             max(pages)
--         FROM
--             books)

-- SELECT 
--     released_year AS year,
--     COUNT(*) AS '# books',
--     AVG(pages) AS 'avg pages'
-- FROM
--     books
-- GROUP BY released_year