-- Query 1 - What was the hottest day in our data set? Where was that?
/*
SELECT
	zip,
	MAX(maxtemperaturef)
FROM
	weather
GROUP BY
	zip
*/

-- Query 2 - How many trips started at each station?
/*
SELECT
    start_station,
    COUNT(*) as station_count
FROM
    trips
GROUP by 1;
*/

-- Query 3 - What's the shortest trip that happened?
/*
SELECT
	MIN(duration) as "Shortest Trip"
FROM
	trips
*/

-- Query 4 - What is the average trip duration, by end station?
/*
SELECT
	end_station,
	AVG(duration) as "Average Trip Duration"
FROM
	trips
GROUP BY
	end_station
*/
----------------------------------------------------------------------------
/*
SELECT
	*
FROM
	stations
*/
------------------
/*
SELECT
	*
FROM
	trips
*/
------------------
/*
SELECT
	*
FROM
	weather
*/
