/*
You are given a table, Functions, containing two columns: X and Y.
Two pairs (X1, Y1) and (X2, Y2) are said to be symmetric pairs if X1 = Y2 and X2 = Y1.

Write a query to output all such symmetric pairs in ascending order by the value of X.
 List the rows such that X1 ≤ Y1.
*/
WITH `A` AS (
    SELECT * FROM `FUNCTIONS`
),
`B` AS (
    SELECT * FROM `FUNCTIONS`
)
SELECT A.* FROM `A`, `B`
WHERE A.X = B.Y AND A.Y = B.X
GROUP BY `X`, `Y` HAVING `X` < `Y` OR COUNT(*) > 1
ORDER BY `X`;