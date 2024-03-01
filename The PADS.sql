/*
Generate the following two result sets:

Query an alphabetically ordered list of all names in OCCUPATIONS,
immediately followed by the first letter of each profession as a parenthetical
(i.e.: enclosed in parentheses). For example: 
AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
Query the number of ocurrences of each occupation in OCCUPATIONS.
 Sort the occurrences in ascending order, and output them in the following format:

There are a total of [occupation_count] [occupation]s.
where [occupation_count] is the number of occurrences of an occupation 
in OCCUPATIONS and [occupation] is the lowercase occupation name.
If more than one Occupation has the same [occupation_count], they should be ordered alphabetically.

Note: There will be at least two entries in the table for each type of occupation.
*/
SELECT
    CONCAT(
        `NAME`,
        CASE
            WHEN `OCCUPATION` = 'Actor' THEN '(A)'
            WHEN `OCCUPATION` = 'Doctor' THEN '(D)'
            WHEN `OCCUPATION` = 'Professor' THEN '(P)'
            WHEN `OCCUPATION` = 'Singer' THEN '(S)'
            ELSE ''
        END
    )
FROM `OCCUPATIONS`
ORDER BY `NAME` ASC;
SELECT 
    CONCAT(
        'There are a total of ',
        COUNT(*),
        ' doctors.'
    ) 
FROM `OCCUPATIONS` WHERE `OCCUPATION` = 'Doctor';
SELECT 
    CONCAT(
        'There are a total of ',
        COUNT(*),
        ' actors.'
    ) 
FROM `OCCUPATIONS` WHERE `OCCUPATION` = 'Actor';
SELECT 
    CONCAT(
        'There are a total of ',
        COUNT(*),
        ' singers.'
    ) 
FROM `OCCUPATIONS` WHERE `OCCUPATION` = 'Singer';
SELECT 
    CONCAT(
        'There are a total of ',
        COUNT(*),
        ' professors.'
    ) 
FROM `OCCUPATIONS` WHERE `OCCUPATION` = 'Professor';