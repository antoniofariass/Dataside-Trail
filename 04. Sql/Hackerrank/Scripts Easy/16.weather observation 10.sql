SELECT DISTINCT city
FROM station
WHERE city REGEXP '^[^aeiouAEIOU]' or city REGEXP '[^aeiouAEIOU]$';