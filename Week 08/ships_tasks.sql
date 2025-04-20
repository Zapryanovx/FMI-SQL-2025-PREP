
INSERT INTO SHIPS
VALUES('Nelson', 'Nelson', 1927), ('Rodney', 'Nelson', 1927)

INSERT INTO CLASSES
VALUES('Nelson', 'bb', 'Gt.Britain', 9, 16, 34000)

---------------------------------------------------------------

DELETE FROM SHIPS
WHERE SHIPS.NAME IN (
	SELECT DISTINCT OUTCOMES.SHIP
	FROM OUTCOMES
	WHERE OUTCOMES.RESULT='sunk'
);

---------------------------------------------------------------

UPDATE CLASSES
SET BORE=BORE*2.5, DISPLACEMENT=DISPLACEMENT*1.1
