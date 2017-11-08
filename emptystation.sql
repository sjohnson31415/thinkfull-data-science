SELECT
	station_id,
	COUNT(bikes_available = 0)
FROM
	status
GROUP BY station_id
ORDER BY COUNT(bikes_available = 0) DESC