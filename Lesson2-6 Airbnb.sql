/*
SELECT
	*
FROM
	listing
LIMIT
	100
*/

-- Query 1 - What's the most expensive listing? What else can you tell me about the listing?
/*
SELECT
	*
FROM
	listing l
ORDER BY
	l.price DESC
*/

-- Query 2 - What neighborhoods seem to be the most popular?
/*
SELECT
	l.neighbourhood,
	COUNT(*)
FROM
	listing l
GROUP BY
	1
ORDER BY
	count DESC
*/

-- Query 3 - What time of year is the cheapest time to go to your city? What about the busiest?
/*
SELECT
	l.last_review,
	l.price
FROM
	listing l
GROUP BY
	1,2
ORDER BY
	l.price ASC
*/

/*
SELECT
	l.last_review
FROM
	listing l
WHERE 
	l.availability_365 = 0
*/








