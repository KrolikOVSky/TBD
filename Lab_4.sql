#Laboratory 4
USE concerts;

#3
SELECT *
FROM concert_hall;

#4
SELECT DISTINCT ADDRESS
FROM concert_hall;

#5
SELECT *
FROM concert_hall
WHERE ADDRESS = '0x111';

#6
SELECT *
FROM concert_hall
WHERE ADDRESS = '0x111'
  AND SITS_NUMBER > 160;

#7
SELECT *
FROM concert_hall
WHERE SITS_NUMBER IN (150, 369, 127);

SELECT *
FROM concert_hall
WHERE SITS_NUMBER BETWEEN 150 AND 369;

SELECT *
FROM concert_hall
WHERE HALL_NAME LIKE 'w%'
   OR HALL_NAME LIKE '%an%';



ALTER TABLE concert_hall
    ADD COLUMN TEMP_COL INT;

SELECT *
FROM concert_hall
WHERE TEMP_COL IS NULL;

ALTER TABLE concert_hall
    DROP COLUMN TEMP_COL;


#8
SELECT *
FROM concert_hall
WHERE ADDRESS NOT IN ('0x111', '0x222');



SELECT *
FROM concert_hall
WHERE SITS_NUMBER NOT BETWEEN 100 AND 200;

#9
SELECT COUNT(*)
FROM concert_hall;

SELECT SUM(SITS_NUMBER)
FROM concert_hall;

SELECT AVG(SITS_NUMBER)
FROM concert_hall;

SELECT MAX(SITS_NUMBER)
FROM concert_hall;

SELECT MIN(SITS_NUMBER)
FROM concert_hall;

#10
SELECT COUNT(*) FROM concert_hall WHERE ADDRESS = "0x115";

#13
SELECT ADDRESS, COUNT(HALL_NAME)
FROM concert_hall
GROUP BY ADDRESS;

#14
SELECT SITS_NUMBER, COUNT(HALL_NAME)
FROM concert_hall
GROUP BY SITS_NUMBER
HAVING SITS_NUMBER > 250;

#15
SELECT * FROM concert_hall WHERE ADDRESS = "0x111";

SELECT SITS_NUMBER, COUNT(HALL_NAME) FROM concert_hall GROUP BY SITS_NUMBER;

SELECT * FROM concert_hall ORDER BY SITS_NUMBER, ADDRESS DESC;