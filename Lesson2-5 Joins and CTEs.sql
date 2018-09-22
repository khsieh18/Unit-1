-- Query 1 - What are the three longest trips on rainy days?
/*
WITH
	rainy_day
AS
	(
		SELECT
			DATE(date) date
		FROM
			weather
		WHERE
			events='Rain'
		GROUP BY
			1
	)

SELECT
	t.trip_id,
	t.duration,
	DATE(t.start_date)
FROM
	trips t
JOIN
	rainy_day r
ON
	DATE(t.start_date)=r.date
ORDER BY
	t.duration DESC
LIMIT
	3;
*/


-- Query 2 - Which station is full most often?
/*
WITH 
	full_status
AS	(
	SELECT
		status.station_id,
		COUNT(*)
	FROM
		status
	WHERE 
		status.docks_available=0
	GROUP BY
	1
	)

SELECT
	f.station_id,
	s.name,
	f.count
FROM
	full_status f
JOIN
	stations s
ON
	f.station_id = s.station_id
ORDER BY
	3 DESC
*/	


-- Query 3 - Return a list of stations with a count of number of trips starting at that station but ordered by dock count.
/*
WITH
	stations_dock
AS
	(
	SELECT
		s.name,
		s.dockcount
	FROM
		stations s
	GROUP BY
		1,2 
	)
	
SELECT
	k.name,
	k.dockcount,
	COUNT(*)
FROM
	stations_dock k
JOIN
	trips t
ON
	k.name = t.start_station
GROUP BY
	1,2
ORDER BY
	k.dockcount DESC;
*/



-- Query 4 - (Challenge) What's the length of the longest trip for each day it rains anywhere?
/*
WITH
	longest
AS
(
	SELECT
		DATE(t.start_date),
		MAX(t.duration) longest_trip
	FROM
		trips t
	GROUP BY
		1
)

SELECT
	l.date,
	l.longest_trip
FROM
	longest l
JOIN
	weather w
ON
	l.date = DATE(w.date)
WHERE
	w.events = 'Rain'
Group BY
	1,2
ORDER BY
	l.longest_trip DESC
*/

----------------------------------------------------------------------------------------------------------
/*
SELECT
	*
FROM
	status
LIMIT 10
*/
