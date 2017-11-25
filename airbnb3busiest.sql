SELECT
	field2,
	field3,
	COUNT(CASE WHEN field3 = 't' THEN 1 END) taken_count
FROM
	calendar
GROUP BY field2
ORDER BY taken_count DESC