-- Revising Aggregations - The Count Function
-- Query a count of the number of cities in CITY having a Population larger than 100000.
-- https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/

SELECT COUNT(NAME)
FROM CITY
WHERE POPULATION > 100000;


-- Revising Aggregations - The Sum Function
-- Query the total population of all cities in CITY where District is California.
-- https://www.hackerrank.com/challenges/revising-aggregations-sum/

SELECT SUM(POPULATION)
FROM CITY
WHERE DISTRICT = "CALIFORNIA";


-- Revising Aggregations - Averages
-- Query the average population of all cities in CITY where District is California.
-- https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/

SELECT AVG(POPULATION)
FROM CITY
WHERE DISTRICT = "CALIFORNIA";


-- Average Population
-- Query the average population for all cities in CITY, rounded down to the nearest integer.
-- https://www.hackerrank.com/challenges/average-population/

SELECT ROUND(AVG(POPULATION))
FROM CITY;


-- Japan Population
-- Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.
-- https://www.hackerrank.com/challenges/japan-population/

SELECT SUM(POPULATION)
FROM CITY
WHERE COUNTRYCODE = "JPN";


-- Population Density Difference
-- Query the difference between the maximum and minimum populations in CITY.
-- https://www.hackerrank.com/challenges/population-density-difference/

SELECT MAX(POPULATION) - MIN(POPULATION)
FROM CITY;



-- Top Earners
-- We define an employee's total earnings to be their monthly salary x months worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. Then print these values as 2 space-separated integers.
-- https://www.hackerrank.com/challenges/earnings-of-employees/

SELECT salary * months AS earnings, count(employee_id)
FROM employee
GROUP BY earnings
ORDER BY earnings DESC
LIMIT 1;


-- Weather Observation Station 2
-- Query the following two values from the STATION table: 1. The sum of all values in LAT_N rounded to a scale of  decimal places. 2. The sum of all values in LONG_W rounded to a scale of  decimal places.
-- https://www.hackerrank.com/challenges/weather-observation-station-2/

SELECT ROUND(SUM(lat_n), 2), ROUND(SUM(long_w), 2)
FROM station;


-- Weather Observation Station 13
-- https://www.hackerrank.com/challenges/weather-observation-station-13/
-- Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than 38.7880 and less than 137.2345. Truncate your answer to 4 decimal places.

SELECT ROUND(SUM(lat_n), 4)
FROM station
WHERE lat_n > 38.7880
AND lat_n < 137.2345;


-- Weather Observation Station 14
-- Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than 13.2345. Truncate your answer to 4 decimal places.
-- https://www.hackerrank.com/challenges/weather-observation-station-14/

SELECT ROUND(MAX(lat_n), 4)
FROM station
WHERE lat_n < 137.2345;


-- Weather Observation Station 15
-- Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345. Round your answer to 4 decimal places.
-- https://www.hackerrank.com/challenges/weather-observation-station-15/

SELECT ROUND(long_w, 4)
FROM station
WHERE lat_n < 137.2345
GROUP BY long_w
ORDER BY MAX(lat_n) DESC
LIMIT 1;


-- Weather Observation Station 16
-- Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7780. Round your answer to 4 decimal places.
-- https://www.hackerrank.com/challenges/weather-observation-station-16/

SELECT ROUND(MIN(lat_n), 4)
FROM station
WHERE lat_n > 38.7780;


-- Weather Observation Station 17
-- Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than 38.7780. Round your answer to 4 decimal places.
-- https://www.hackerrank.com/challenges/weather-observation-station-17/

SELECT ROUND(long_w, 4)
FROM station
WHERE lat_n > 38.7780
ORDER BY lat_n ASC
LIMIT 1;


-- Weather Observation Station 18
-- Consider P1(a,b) and P2(c,d) to be two points on a 2D plane. Query the Manhattan Distance between points P1 and P2 and round it to a scale of 4 decimal places.
-- https://www.hackerrank.com/challenges/weather-observation-station-18/

SELECT ROUND((MAX(lat_n) - MIN(lat_n)) + (MAX(long_w) - MIN(long_w)), 4)
FROM station;


-- Weather Observation Station 19
-- Query the Euclidean Distance between points P1 and P2 and format your answer to display 4 decimal digits.
-- https://www.hackerrank.com/challenges/weather-observation-station-19/

SELECT ROUND(SQRT(POWER(MAX(lat_n) - MIN(lat_n), 2) + POWER(MAX(long_w) - MIN(long_w), 2)), 4)
FROM station;


-- Weather Observation Station 20
-- A median is defined as a number separating the higher half of a data set from the lower half. Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to 4 decimal places.
-- https://www.hackerrank.com/challenges/weather-observation-station-20/

SELECT ROUND(lat_n, 4)
FROM (SELECT lat_n FROM station ORDER BY lat_n LIMIT 250) AS ListOf250First
ORDER BY lat_n DESC
LIMIT 1;
