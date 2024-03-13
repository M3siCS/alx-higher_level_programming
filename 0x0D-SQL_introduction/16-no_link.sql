-- List all records of the table second_table from the database hbtn_0c_0
-- Display the score and the name (in this order), skip rows without a name value
-- Order by descending score
SELECT score, name
FROM second_table
WHERE name IS NOT NULL
ORDER BY score DESC;

