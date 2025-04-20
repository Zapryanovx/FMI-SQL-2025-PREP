
INSERT INTO PC 
VALUES(12, 1100, 2400, 2048, 500, '52x', 299)

INSERT INTO PRODUCT
VALUES('C', 1100, 'PC')

-----------------------------------------------------

DELETE FROM PC
WHERE MODEL=1100

-----------------------------------------------------

DELETE FROM LAPTOP
WHERE MODEL IN (
	SELECT DISTINCT LAPTOP.MODEL
	FROM LAPTOP
	JOIN PRODUCT ON LAPTOP.MODEL = PRODUCT.MODEL
	WHERE PRODUCT.MAKER NOT IN (
		SELECT DISTINCT MAKER
		FROM PRODUCT
		WHERE TYPE = 'Printer'
	)
);

-----------------------------------------------------

UPDATE PRODUCT
SET MAKER='B'
WHERE MAKER='A'

-----------------------------------------------------

UPDATE PC
SET PRICE=PRICE / 2, HD=HD + 20

-----------------------------------------------------

UPDATE LAPTOP
SET SCREEN=SCREEN + 1
WHERE LAPTOP.MODEL IN ( 
	SELECT LAPTOP.MODEL 
	FROM LAPTOP
	JOIN PRODUCT ON PRODUCT.MODEL = LAPTOP.MODEL
	WHERE PRODUCT.MAKER = 'B'
)

