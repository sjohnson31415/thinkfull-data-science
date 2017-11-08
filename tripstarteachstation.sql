SELECT
	trip_id,
	start_station,
	COUNT(start_station) 
FROM 
	trips
GROUP BY start_station
