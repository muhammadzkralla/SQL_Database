/*
Consider  and  to be two points on a 2D plane.

 happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
 happens to equal the minimum value in Western Longitude (LONG_W in STATION).
 happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
 happens to equal the maximum value in Western Longitude (LONG_W in STATION).
Query the Manhattan Distance between points  and  and round it to a scale of  decimal places.
*/
WITH A AS (
    SELECT MIN(`LAT_N`) FROM `STATION`
), B AS (
    SELECT MIN(`LONG_W`) FROM `STATION`
), C AS (
    SELECT MAX(`LAT_N`) FROM `STATION`
), D AS (
    SELECT MAX(`LONG_W`) FROM `STATION`
)
SELECT ROUND(ABS((SELECT * FROM A) - (SELECT * FROM C)) + ABS((SELECT * FROM B) - (SELECT * FROM D)), 4);