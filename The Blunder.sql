/*
Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table,
but did not realize her keyboard's  key was broken until after completing the calculation.
She wants your help finding the difference between her miscalculation (using salaries with any zeros removed),
and the actual average salary.

Write a query calculating the amount of error (i.e.:  average monthly salaries), and round it up to the next integer.
*/
WITH A AS (
    SELECT AVG(`SALARY`) AS `A_AVG` FROM `EMPLOYEES`
), B AS (
    SELECT AVG(REPLACE(`SALARY`, '0', '')) AS `B_AVG` FROM `EMPLOYEES`
)
SELECT CEILING(A.A_AVG - B.B_AVG) FROM B, A;
