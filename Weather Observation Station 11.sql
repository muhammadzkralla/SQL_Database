/*
Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels.
 Your result cannot contain duplicates.
*/
SELECT DISTINCT `CITY`
FROM `STATION`
WHERE LOWER(SUBSTRING(`CITY`, 1, 1)) NOT IN ('a', 'e', 'i', 'o', 'u')
  OR LOWER(SUBSTRING(`CITY`, -1, 1)) NOT IN ('a', 'e', 'i', 'o', 'u');