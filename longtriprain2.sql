WITH
	rainy_day
AS(
SELECT
	date
FROM 
	weather
WHERE
	Events = 'Rain'
GROUP BY 1
)
SELECT
	duration,
	trip_id,
DATE(start_date) trip_date
FROM 
	trips
JOIN
	rainy_day
ON
	rainy_day.date = trip_date
GROUP BY 1
ORDER BY duration DESC
LIMIT 3