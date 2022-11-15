-- Revising the Select Query I
-- Query all columns for all American cities in the CITY table with populations largen than 100000. The CountryCode for America is USA
-- https://www.hackerrank.com/challenges/revising-the-select-query/ 

SELECT *
FROM CITY
WHERE COUNTRYCODE = "USA"
AND POPULATION > 100000;


-- Revising the Select Query II
-- Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA
-- https://www.hackerrank.com/challenges/revising-the-select-query-2/

SELECT NAME
FROM CITY
WHERE COUNTRYCODE = "USA"
AND POPULATION > 120000;


-- Select All
-- Query all columns (attributes) for every row in the CITY table
-- https://www.hackerrank.com/challenges/select-all-sql/

SELECT *
FROM CITY;


-- Select By ID
-- Query all columns for a city in CITY with the ID 1661
-- https://www.hackerrank.com/challenges/select-by-id/

SELECT *
FROM CITY
WHERE ID = 1661;


-- Japanese Cities' Attributes
-- Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
-- https://www.hackerrank.com/challenges/japanese-cities-attributes/

SELECT *
FROM CITY
WHERE COUNTRYCODE = "JPN";


-- Japanese Cities' Names
-- Query the names of all Japaneses cities in the CITY table. The COUNTRYCODE for Japan is JPN.
-- https://www.hackerrank.com/challenges/japanese-cities-name/

SELECT NAME
FROM CITY
WHERE COUNTRYCODE = "JPN";


-- Weather Observation Station 1
-- Query a list of CITY and STATE from the STATION table
-- https://www.hackerrank.com/challenges/weather-observation-station-1/

SELECT CITY, STATE
FROM STATION;


-- Weather Observation Station 3
-- Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
-- https://www.hackerrank.com/challenges/weather-observation-station-3/

SELECT DISTINCT CITY
FROM STATION
WHERE MOD(ID,2) = 0
ORDER BY CITY;


-- Weather Observation Staion 4
-- Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the tables.
-- https://www.hackerrank.com/challenges/weather-observation-station-4/

SELECT COUNT(CITY) - COUNT(DISTINCT CITY)
FROM STATION;


-- Weather Observation Station 5
-- Query the 2 cities in STATION with the shortest and longest CITY names, as well as their rspective lenghts (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
-- https://www.hackerrank.com/challenges/weather-observation-station-5/

SELECT CITY, CHAR_LENGTH(CITY)
FROM STATION
ORDER BY CHAR_LENGTH(CITY), CITY ASC
LIMIT 1;

SELECT CITY, CHAR_LENGTH(CITY)
FROM STATION
ORDER BY CHAR_LENGTH(CITY) DESC, CITY ASC
LIMIT 1;


-- Weather Observation Station 6
-- Query the list of CITY names starting with vowels (i.e.: a, e, i, o, u) from STATION. Your result cannot contain duplicates.
-- https://www.hackerrank.com/challenges/weather-observation-station-6/

SELECT DISTINCT CITY
FROM STATION
WHERE CITY RLIKE "^[aeiou]";

-- Weather Obsertation Station 7
-- Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
-- https://www.hackerrank.com/challenges/weather-observation-station-7/

SELECT DISTINCT CITY
FROM STATION
WHERE CITY RLIKE "[aeiou]$";


-- Weather Observation Station 8
-- Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
-- https://www.hackerrank.com/challenges/weather-observation-station-8/

SELECT DISTINCT CITY
FROM STATION
WHERE CITY RLIKE "^[aeiou].*[aeiou]$";


-- Weather Observation Station 9
-- Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
-- https://www.hackerrank.com/challenges/weather-observation-station-9/

SELECT DISTINCT CITY
FROM STATION
WHERE CITY RLIKE "^[^aeiou]";


-- Weather Observation Station 10
-- Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
-- https://www.hackerrank.com/challenges/weather-observation-station-10/
 
SELECT DISTINCT CITY
FROM STATION
WHERE CITY RLIKE "[^aeiou]$";


-- Weather Observation 12
-- Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.
-- https://www.hackerrank.com/challenges/weather-observation-station-12/

SELECT DISTINCT CITY
FROM STATION
WHERE CITY RLIKE "^[^aeiou].*[^aeiou]$";


-- Higher Than 75 Marks
-- Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.
-- https://www.hackerrank.com/challenges/more-than-75-marks/

SELECT NAME
FROM STUDENTS
WHERE MARKS > 75
ORDER BY RIGHT(NAME, 3), ID ASC;


-- Employee Names
-- Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.
-- https://www.hackerrank.com/challenges/name-of-employees/

SELECT NAME
FROM EMPLOYEE
ORDER BY NAME ASC;


-- Employee Salaries
-- Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than $2.000 per month who have been employees for less than 10 months. Sort your result by ascending employee_id.
-- https://www.hackerrank.com/challenges/salary-of-employees/

SELECT NAME
FROM EMPLOYEE
WHERE SALARY > 2000
AND MONTHS < 10
ORDER BY EMPLOYEE_ID ASC;


-- THIS FILE WAS MADE BY GABRIEL CARDOSO FREITAS
-- FEEL FREE TO USE :)