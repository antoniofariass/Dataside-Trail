SELECT DISTINCT city
FROM station
WHERE city REGEXP '^[^aeiouAEIOU]' and city REGEXP '[^aeiouAEIOU]$';