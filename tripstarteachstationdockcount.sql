SELECT
	start_station,
	COUNT(start_date),
	dockcount
FROM
	trips
JOIN	
	stations
ON trips.start_station = stations.name
GROUP BY name
ORDER BY dockcount DESC