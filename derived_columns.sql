
--DERIVED COLUMNS--

SELECT id, (standard_amt_usd/total_amt_usd)*100 AS std_percent, total_amt_usd
FROM orders
LIMIT 10;


/*Create a column that divides the standard_amt_usd by the standard_qty to find the unit price for standard paper for each order. Limit the results to the first 10 orders, and include the id and account_id fields.*/

SELECT id, account_id, (standard_amt_usd/standard_qty) AS unit_price
FROM orders
LIMIT 10;


/*Write a query that finds the percentage of revenue that comes from poster paper for each order. You will need to use only the columns that end with _usd. Display the id and account_id fields also.*/

SELECT id, account_id, 100 * (poster_amt_usd/(standard_amt_usd+gloss_amt_usd+poster_amt_usd)) AS poster_percent
FROM orders
WHERE poster_amt_usd > 0
LIMIT 20;