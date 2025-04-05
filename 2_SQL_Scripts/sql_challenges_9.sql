/*

*******************************************************************************
*******************************************************************************

SQL CHALLENGES 9

*******************************************************************************
*******************************************************************************

HOW TO GET THE SCHEMA OF A DATABASE: 
* Windows/Linux: Ctrl + r
* MacOS: Cmd + r

In the exercises below you will need to use the clauses you used in the
previous SQL Challenges, plus the following clauses:
    - AS
	- LEFT JOIN
    - RIGHT JOIN
    - INNER JOIN
    - CASE
*/

USE publications; 
 
/*******************************************************************************
ALIAS (AS) for tables
*******************************************************************************/

/* 1. 
Assign an alias to the table sales. 
Select the column ord_num using the syntax "table_alias.column"
*/

SELECT 
    s.ord_num
FROM
    sales AS s;

/*******************************************************************************
JOINS

LEFT JOIN: Returns all records from the left table (table 1) and the matching records from the right table (table 2)
RIGHT JOIN: Returns all records from the right table (table 2) and the matching records from the left table (table 1)
INNER JOIN: Selects records that have matching values in both tables

We will only use LEFT, RIGHT, and INNER joins.
You do not need to worry about the other types for now

- https://www.w3schools.com/sql/sql_join.asp
- https://www.w3schools.com/sql/sql_join_left.asp
- https://www.w3schools.com/sql/sql_join_right.asp
- https://www.w3schools.com/sql/sql_join_inner.asp
*******************************************************************************/

/*
2. Select the title and publisher name of all books 
*/

SELECT 
    t.title,
    p.pub_name
FROM
    titles t
        LEFT JOIN
    publishers p ON t.pub_id = p.pub_id;
    
/*
3. Select the order number, quantity and book title for all sales.
*/
SELECT 
    s.ord_num, s.qty, t.title
FROM
    sales s
        LEFT JOIN
    titles t ON s.title_id = t.title_id;


/*
4. Select the full name of all employees and the name of the publisher they 
   work for
*/

SELECT 
    e.fname, e.lname, p.pub_name
FROM
    employee e
        LEFT JOIN
    publishers p ON e.pub_id = p.pub_id;

/*
5. Select the full name and job description of all employees.
*/

SELECT 
    e.fname, e.lname, j.job_desc
FROM
    employee e
        LEFT JOIN
    jobs j ON e.job_id = j.job_id;


/*
6. Select the full name, job description and publisher name of all employees
   Hint: you will have to perform 2 joins in a single query to merge 3 tables 
         together.
*/

SELECT 
    e.fname, e.lname, j.job_desc, p.pub_name
FROM
    employee e
        LEFT JOIN
    jobs j ON e.job_id = j.job_id
		LEFT JOIN
    publishers p ON e.pub_id = p.pub_id;

/*
7. Select the full name, job description and publisher name of employees
   that work for Binnet & Hardley.
   Hint: you can add a WHERE clause after the joins

*/
SELECT 
    e.fname, e.lname, j.job_desc, p.pub_name
FROM
    employee e
        LEFT JOIN
    jobs j ON e.job_id = j.job_id
		LEFT JOIN
    publishers p ON e.pub_id = p.pub_id
WHERE
	pub_name = "Binnet & Hardley";

/*
8. Select the name and PR Info (from the pub_info table) from all publishers
   based in Berkeley, California.
*/

SELECT 
    p.pub_name, pi.pr_info
FROM
    publishers p
        LEFT JOIN
    pub_info pi ON p.pub_id = pi.pub_id
WHERE
    p.city = 'Berkeley' AND state = 'CA';

/*
9. Select all columns from the discounts table.
   Observe the columns it has and now some of them are filled with NULL values.
*/
SELECT * FROM discounts;

/*
10. Select all store names, their store id and the discounts they offer.
   - When selecting the store id, select it two times: from the stores table
   and from the discounts table.
   - ALL stores should be displayed, even if they don't offer any discount 
     (i.e. have a NULL value on the discount column).
*/

SELECT 
    s.stor_name,
    s.stor_id,
    d.stor_id,
    d.discount
FROM
    stores s
        LEFT JOIN
    discounts d ON d.stor_id = s.stor_id;

/*
11. Select all store names and the discounts they offer.
   - This time, we don't want to display stores that don't offer any discount.
   Hint: change the join type!
*/

SELECT 
    s.stor_name,
    d.discount
FROM
    stores s
        INNER JOIN
    discounts d ON d.stor_id = s.stor_id;
