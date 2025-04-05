/*
*******************************************************************************
*******************************************************************************

SQL CHALLENGES 3

*******************************************************************************
*******************************************************************************

In the exercises below you will need to use the following clauses:
	- ORDER BY
	- LIMIT
    - MIN(), MAX()
    - COUNT(), AVG(), SUM()

In SQL we can have many databases, they will show up in the schemas list
We must first define which database we will be working with.
*/

USE publications;

/******************************************************************************
ORDER BY: Is used to sort the result-set in ascending or descending order.
		  To sort the records in descending order, use the DESC keyword

-- https://www.w3schools.com/sql/sql_orderby.asp
******************************************************************************/


/* 1. Select the title and ytd_sales from the table titles. Order them by the 
year to date sales. */
SELECT 
	title, ytd_sales 
FROM 
	titles 
ORDER BY 
	ytd_sales;


-- 2. Repeat the same query, but this time sort the titles in descending order

SELECT 
	title, ytd_sales 
FROM 
	titles 
ORDER BY 
	ytd_sales DESC;


/******************************************************************************
LIMIT: Is used to specify the number of records to return. This clause is useful on large tables with thousands of records.

https://www.w3schools.com/mysql/mysql_limit.asp
******************************************************************************/

-- 3. Select the top 5 titles with the most ytd_sales from the table titles
SELECT 
	title, ytd_sales 
FROM 
	titles 
ORDER BY 
	ytd_sales DESC
LIMIT 5;


/******************************************************************************
MIN: Returns the smallest value of the selected column
MAX: Returns the largest value of the selected column

https://www.w3schools.com/sql/sql_min_max.asp
******************************************************************************/

-- 4. What's the maximum amount of books ever sold in a single order? 
SELECT
	MAX(qty) AS max_books_sold
FROM
	sales;


-- 5. What's the price of the cheapest book?
SELECT
	MIN(price) AS cheapest_book_price
FROM
	titles;


/******************************************************************************
COUNT: Returns the number of rows that matches a specified criterion
AVG: Returns the average value of a numeric column
SUM: Returns the total sum of a numeric column

https://www.w3schools.com/sql/sql_count_avg_sum.asp

******************************************************************************/
 
 -- 6. How many rows are there in the table authors?
 SELECT
	COUNT(*) AS total_authors
FROM
	authors;
 
 -- 7. What's the total amount of year-to-date sales?
SELECT 
    SUM(ytd_sales) total_ytd_sales
FROM
    titles;
 
 -- 7. What's the average price of books?
 SELECT
	AVG(price) AS avg_book_price
FROM
	titles;
 
 
/* 8. In a single query, select the count, average and sum of quantity in the 
table sales */

SELECT 
    COUNT(qty) AS total_orders, 
    AVG(qty) AS avg_books_per_order, 
    SUM(qty) AS total_books_sold
FROM
    sales;
