
---------------------------------------------------

SELECT DISTINCT PRODUCT.MAKER, PRODUCT.MODEL, PRODUCT.TYPE
FROM PRODUCT
LEFT JOIN PC	
	ON PRODUCT.MODEL = PC.MODEL
LEFT JOIN LAPTOP
	ON PRODUCT.MODEL = LAPTOP.MODEL
LEFT JOIN PRINTER
	ON PRODUCT.MODEL = PRINTER.MODEL
WHERE PC.PRICE IS NULL 
	AND LAPTOP.PRICE IS NULL 
	AND PRINTER.PRICE IS NULL;

---------------------------------------------------

SELECT DISTINCT PRODUCT.MAKER
FROM PRODUCT
JOIN LAPTOP
	ON PRODUCT.MODEL = LAPTOP.MODEL
WHERE PRODUCT.MAKER IN (
	SELECT PRODUCT.MAKER 
	FROM PRODUCT
JOIN PRINTER
	ON PRODUCT.MODEL = PRINTER.MODEL
);

---------------------------------------------------

SELECT DISTINCT L1.HD
FROM LAPTOP AS L1
JOIN LAPTOP AS L2
	ON L1.HD = L2.HD
	AND L1.MODEL != L2.MODEL

---------------------------------------------------
	
SELECT * 
FROM PC
LEFT JOIN PRODUCT
	ON PRODUCT.MODEL = PC.MODEL
	WHERE PRODUCT.MAKER IS NULL;