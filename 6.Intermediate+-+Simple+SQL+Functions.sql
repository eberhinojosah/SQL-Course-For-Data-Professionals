/*
This script contains all the SQL statements
from the Introduction to SQL functions section of the course
*/

-- Set-up the tables required for this section of the course

DROP TABLE IF EXISTS population;

CREATE TABLE population
(
    country          VARCHAR(50),
    continent       VARCHAR(10),
    total_population BIGINT
);

INSERT INTO population
(country, continent, total_population)
VALUES
('India', 'Asia', 1428627663),
('China', 'Asia', 1425671352),
('United States', 'Americas', 339996564),
('Indonesia', 'Asia', 277534123),
('Pakistan', 'Asia', 240485658),
('Nigeria', 'Africa', 223804632),
('Brazil', 'Americas', 216422446),
('Bangladesh', 'Asia', 172954319),
('Russia', 'Europe', 144444359),
('Mexico', 'Americas', 128455567);

-- Usage of UPPER, LOWER, CONCAT Function

SELECT UPPER(country) AS  country,
            LOWER(continent) AS continent,
            total_population
  FROM population;
  
SELECT continent || ' - ' || country AS country,
            total_population
  FROM population;

SELECT 'Continent : ' || continent || ' - ' || 'Country : ' || country AS country,
            total_population
  FROM population;

-- Demo REPLACE, TRIM, LTRIM and RTRIM functions

SELECT REPLACE ('This course teaches SQL Fundamentals', 'SQL', 'Python') AS output;

SELECT REPLACE ('This SQL course teaches SQL Fundamentals', 'SQL', 'Python') AS output;

SELECT REPLACE ('This SQL course teaches SQL Fundamentals', 'Sql', 'Python') AS output;

SELECT '             Testing TRIM             ' AS output;

SELECT TRIM('             Testing TRIM             ') AS output;
SELECT LTRIM('             Testing TRIM             ') AS output;
SELECT RTRIM('             Testing TRIM             ') AS output;

SELECT LTRIM(RTRIM('             Testing TRIM             ')) AS output;

-- Demo SUBSTR, INSTR and LENGTH functions

SELECT country,
            continent,
            total_population,
            SUBSTR(country, 1, 3) country_start,
            SUBSTR(country, 4) country_end,
            INSTR(country, 'ia') start_pos_ia,
            INSTR(country, ' ') start_pos_space,
            LENGTH(country) country_length
  FROM population;

-- Demo math functions

SELECT ABS(-100) AS abs,
            CEIL(12.2) AS ceil,
            FLOOR(12.9) AS floor,
            POWER(5, 2) AS power,
            SQRT(25) AS sqrt,
            MOD(30, 5) AS mod;

-- Demo Nested Functions
-- Example 1. Python Fundamentals to SQL FUNDAMENTALS

SELECT UPPER(REPLACE('Python Fundamentals', 'Python', 'SQL')) AS output;

/*
Requirement
--------------
Input - Full Name 
Output - First Name, Surname separately.
Assumption - Full name is just 2 words. E.g. Venus Williams, Serena Williams etc
*/

SELECT SUBSTR('Serena Williams', 1, INSTR('Serena Williams', ' ') - 1) AS first_name,
            SUBSTR('Serena Williams', INSTR('Serena Williams', ' ') + 1) AS surname;

SELECT INSTR('Serena Williams', ' ') - 1 AS length;

DROP TABLE person;

CREATE TABLE person
(full_name VARCHAR(50));

INSERT INTO person 
            (full_name)
VALUES ('Venus Williams'),
            ('Serena Williams'),
            ('Roger Federer'),
            ('Rafael Nadal');
            
SELECT SUBSTR(full_name, 1, INSTR(full_name, ' ') - 1) AS first_name,
            SUBSTR(full_name, INSTR(full_name, ' ') + 1) AS surname
  FROM person;
















