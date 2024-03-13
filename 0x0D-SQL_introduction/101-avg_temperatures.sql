-- Calculate the average temperature (Fahrenheit) by city and order by temperature (descending)

-- Select the city and calculate the average temperature in Fahrenheit
SELECT 
    city, 
    AVG(temperature * 9 / 5 + 32) AS average_temperature_fahrenheit
FROM 
    table_name -- Replace 'table_name' with the actual name of the imported table
GROUP BY 
    city -- Group the data by city

-- Order the results by average temperature in descending order
ORDER BY 
    average_temperature_fahrenheit DESC;

