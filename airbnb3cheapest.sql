SELECT 
	strftime('%m', date), AVG(cast(substr(CAST( price AS  varchar) , 2, 10) as float)) 
	

	
	
FROM 
	calendar
WHERE
	available = 't'
GROUP BY 
	strftime('%m', date) , available
ORDER BY AVG(price)
LIMIT 100
