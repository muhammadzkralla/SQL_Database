/*
Consider  and  to be two points on a 2D plane where  are the respective minimum and maximum values of Northern Latitude (LAT_N) and  are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.

Query the Euclidean Distance between points  and  and format your answer to display  decimal digits.
*/
WITH A AS (
    SELECT MIN(`LAT_N`) FROM `STATION`
), B AS (
    SELECT MAX(`LAT_N`) FROM `STATION`
), C AS (
    SELECT MIN(`LONG_W`) FROM `STATION`
), D AS (
    SELECT MAX(`LONG_W`) FROM `STATION`
)

SELECT ROUND(SQRT(POW((SELECT * FROM A) - (SELECT * FROM B), 2) + POW((SELECT * FROM C) - (SELECT * FROM D), 2)), 4)