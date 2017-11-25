SELECT
	MAX(CAST(substr(CAST( price AS  varchar) , 2, 10) as float)),
	*
FROM
	listings
