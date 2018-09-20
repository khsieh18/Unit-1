SELECT
	trip_id,
	start_date
FROM 
	trips
WHERE
	bike_id=27 AND
	subscriber_type LIKE 'Customer'
ORDER BY duration DESC