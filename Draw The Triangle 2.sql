/*
P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

* 
* * 
* * * 
* * * * 
* * * * *
Write a query to print the pattern P(20).
*/
WITH RECURSIVE `rec` AS (
    SELECT 1 AS `len`
    UNION ALL
    SELECT `len` + 1 AS `len` FROM `rec` WHERE `len` < 20
)
SELECT REPEAT('* ', `len`) FROM `rec`;