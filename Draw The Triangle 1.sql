/*
P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

* * * * * 
* * * * 
* * * 
* * 
*
Write a query to print the pattern P(20).
*/
WITH RECURSIVE rec AS (
    SELECT REPEAT('* ', 20) AS `c`
    UNION ALL
    SELECT SUBSTRING(`c`, 1, LENGTH(`c`) - 2) AS `c` FROM `rec` WHERE LENGTH(`c`) > 2
)
SELECT `c` FROM `rec`;