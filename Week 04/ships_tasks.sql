
------------------------------------------

SELECT *
FROM SHIPS
JOIN CLASSES
	ON SHIPS.CLASS = CLASSES.CLASS;

------------------------------------------

SELECT *
FROM SHIPS
FULL JOIN CLASSES
	ON SHIPS.CLASS = CLASSES.CLASS;

------------------------------------------

SELECT CLASSES.COUNTRY, SHIPS.NAME 
FROM SHIPS
JOIN CLASSES
	ON SHIPS.CLASS = CLASSES.CLASS
LEFT JOIN OUTCOMES
	ON SHIPS.NAME = OUTCOMES.SHIP
WHERE BATTLE IS NULL
ORDER BY COUNTRY;

------------------------------------------

SELECT SHIPS.NAME AS ShipName
FROM SHIPS
JOIN CLASSES
	ON SHIPS.CLASS = CLASSES.CLASS
WHERE SHIPS.LAUNCHED=1916 AND CLASSES.NUMGUNS >= 7;

------------------------------------------

SELECT OUTCOMES.SHIP, OUTCOMES.BATTLE, BATTLES.NAME
FROM OUTCOMES
JOIN BATTLES
	ON OUTCOMES.BATTLE = BATTLES.NAME
	WHERE OUTCOMES.RESULT = 'SUNK'
ORDER BY OUTCOMES.BATTLE;

------------------------------------------

SELECT SHIPS.NAME, CLASSES.DISPLACEMENT, SHIPS.LAUNCHED
FROM SHIPS
JOIN CLASSES
	ON SHIPS.CLASS = CLASSES.CLASS AND SHIPS.NAME = CLASSES.CLASS
ORDER BY SHIPS.NAME;

------------------------------------------

SELECT *
FROM CLASSES
LEFT JOIN SHIPS
	ON SHIPS.CLASS = CLASSES.CLASS
WHERE LAUNCHED IS NULL;

------------------------------------------

SELECT SHIPS.NAME, CLASSES.DISPLACEMENT, CLASSES.NUMGUNS, OUTCOMES.RESULT
FROM SHIPS
JOIN CLASSES 
	ON SHIPS.CLASS = CLASSES.CLASS
JOIN OUTCOMES 
	ON SHIPS.NAME = OUTCOMES.SHIP
WHERE OUTCOMES.BATTLE = 'NORTH ATLANTIC';