-- Query 1 - The IDs and durations for all trips of duration greater than 500, ordered by duration.
-- Display "trips" Table Data
/*
SELECT 
	*
FROM
	trips
*/
	
/*
SELECT
	trip_id,
	duration
FROM 
	trips
WHERE
	duration>500
ORDER BY duration ASC
*/
------------------------------------------------------------------------------
-- Query 2 - Every column of the stations table for station id 84.
-- Display "stations" Table Data
/*
SELECT 
	*
FROM
	stations
*/

/*
SELECT
	*
FROM
	stations
WHERE
	station_id=84
*/
-------------------------------------------------------------------------------
-- Query 3 - The min temperatures of all the occurrences of rain in zip 94301.
-- Display "weather" Table Data
/*
SELECT 
	*
FROM
	weather
*/
/*
SELECT
	mintemperaturef
FROM
	weather
WHERE
	precipitationin>0 AND
	zip=94301
*/