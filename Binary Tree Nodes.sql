/*
You are given a table, BST, containing two columns: N and P,
where N represents the value of a node in Binary Tree, and P is the parent of N.

Write a query to find the node type of Binary Tree ordered by the value of the node. Output one of the following for each node:

Root: If node is root node.
Leaf: If node is leaf node.
Inner: If node is neither root nor leaf node.
*/
WITH A AS (
    SELECT `N` AS `root`
    FROM `BST`
    WHERE `P` IS NULL
), B AS (
    SELECT DISTINCT `P` AS `inner`
    FROM `BST`
    WHERE `P` IS NOT NULL
    AND `P` NOT IN (SELECT `root` FROM `A`)
), C AS (
    SELECT `N` AS `leaf`
    FROM `BST`
    WHERE
    `N` NOT IN (SELECT `root` FROM `A`) 
    AND `N` NOT IN (SELECT `inner` FROM `B`)
), D AS (
    SELECT `root` AS `root_column`, 'Root' FROM `A` UNION ALL
    SELECT `inner`, 'Inner' FROM `B` UNION ALL
    SELECT `leaf`, 'Leaf' FROM `C`
)

SELECT * FROM `D` ORDER BY `root_column`;