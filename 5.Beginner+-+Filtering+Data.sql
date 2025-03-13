/*
This script contains all the SQL statements
from the Filtering Data section of the course
*/

SELECT *
  FROM population
WHERE continent = 'Asia';

SELECT *
  FROM population
WHERE continent != 'Asia';

SELECT *
  FROM population
WHERE total_population >= 223804632;

SELECT *
  FROM population
WHERE total_population <= 223804632;

-- Demonstrate BETWEEN Operator

SELECT * 
  FROM population;

SELECT *
  FROM population
WHERE total_population BETWEEN 216422446 AND 277534123;

-- Demonstrate LIKE Operator

SELECT * 
  FROM population;

SELECT * 
  FROM population
WHERE country LIKE 'B%';

SELECT * 
  FROM population
WHERE country LIKE '%ia';

SELECT * 
  FROM population
WHERE country LIKE 'In%ia';

SELECT * 
  FROM population
WHERE country LIKE 'In_____ia';


SELECT * 
  FROM population
WHERE country LIKE '%i__';

-- Demonstrate IN Operator

SELECT * 
  FROM population
WHERE country IN ('China', 'Pakistan', 'Russia');

-- Demonstrate AND Keyword

SELECT * 
  FROM population
WHERE continent = 'Asia'
     AND total_population > 250000000;

-- Demonstrate OR Keyword

SELECT * 
  FROM population
WHERE continent = 'Americas'
       OR total_population > 1000000000;

-- Demonstrate AND and OR Keywords together

SELECT * 
  FROM population
WHERE continent = 'Asia'
     AND (total_population > 1000000000
      OR total_population < 200000000);

-- Demonstrate NOT Keyword

SELECT *
  FROM population
WHERE country NOT IN ('India', 'China');

SELECT *
  FROM population
WHERE country NOT LIKE 'I%';

SELECT *
  FROM population
WHERE total_population NOT BETWEEN 200000000 AND 300000000;

-- Demonstrate Filters in UPDATE and DELETE Statements

SELECT *
  FROM population;

UPDATE population 
      SET total_population = 340000000
WHERE country = 'United States';

DELETE 
   FROM population
WHERE total_population < 1000000000;



   
























