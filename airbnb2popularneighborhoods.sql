SELECT
	COUNT(field40),
	field40
FROM 
	listings
GROUP BY field40
ORDER BY COUNT(field40) DESC