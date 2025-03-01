
---------------------------------------

SELECT MOVIESTAR.NAME 
FROM MOVIESTAR
WHERE MOVIESTAR.NAME IN (
SELECT MOVIEEXEC.NAME 
FROM MOVIEEXEC
WHERE MOVIEEXEC.NETWORTH > 10000000)
AND MOVIESTAR.GENDER = 'F';

---------------------------------------

SELECT MOVIESTAR.NAME
FROM MOVIESTAR
WHERE MOVIESTAR.NAME NOT IN (
SELECT MOVIEEXEC.NAME
FROM MOVIEEXEC)

---------------------------------------

SELECT MOVIE.TITLE
FROM MOVIE
WHERE MOVIE.LENGTH > (
SELECT MOVIE.LENGTH
FROM MOVIE
WHERE MOVIE.TITLE = 'Star Wars')

---------------------------------------

SELECT MOVIE.TITLE, MOVIEEXEC.NAME
FROM MOVIE, MOVIEEXEC
WHERE MOVIE.PRODUCERC# = MOVIEEXEC.CERT#
AND MOVIEEXEC.NETWORTH > (
SELECT MOVIEEXEC.NETWORTH
FROM MOVIEEXEC
WHERE MOVIEEXEC.NAME = 'Merv Griffin')
