-- Displays the average temperature (Fahrenheit) by city ordered by temperature (descending)
-- Display an average value
SELECT 
    city, 
    AVG(temperature * 9 / 5 + 32) AS avg_temp -- Calculate average temperature in Fahrenheit
FROM 
    temperatures -- Replace 'temperatures' with the actual name of the imported table
GROUP BY 
    city -- Group by city
ORDER BY 
    avg_temp DESC; -- Order by average temperature in descending order

