
-----------------------------------------

SELECT DISTINCT MAKER, SPEED
FROM PRODUCT, LAPTOP
WHERE PRODUCT.MODEL = LAPTOP.MODEL
AND LAPTOP.HD > 9

-----------------------------------------

(SELECT DISTINCT PRODUCT.MODEL, LAPTOP.PRICE
FROM PRODUCT, LAPTOP
WHERE PRODUCT.MODEL = LAPTOP.MODEL
AND PRODUCT.maker = 'B')

UNION

(SELECT DISTINCT PRODUCT.MODEL, PC.PRICE
FROM PRODUCT, PC
WHERE PRODUCT.MODEL = PC.MODEL
AND PRODUCT.maker = 'B')

UNION

(SELECT DISTINCT PRODUCT.MODEL, PRINTER.PRICE
FROM PRODUCT, PRINTER
WHERE PRODUCT.MODEL = PRINTER.MODEL
AND PRODUCT.MAKER = 'B');

-----------------------------------------

SELECT DISTINCT PRODUCT.MAKER
FROM PRODUCT
WHERE PRODUCT.TYPE = 'Laptop'

EXCEPT

SELECT DISTINCT PRODUCT.MAKER
FROM PRODUCT
WHERE PRODUCT.TYPE = 'PC'

-----------------------------------------

SELECT DISTINCT PC1.HD
FROM PC AS PC1, PC AS PC2
WHERE PC1.CODE != PC2.CODE
AND PC1.HD = PC2.HD

-----------------------------------------

SELECT DISTINCT PC1.MODEL, PC2.MODEL
FROM PC AS PC1, PC AS PC2
WHERE PC1.MODEL < PC2.MODEL
AND PC1.SPEED = PC2.SPEED 
AND PC1.RAM = PC2.RAM

-----------------------------------------

SELECT DISTINCT PR1.MAKER
FROM PRODUCT AS PR1, PRODUCT AS PR2,
PC AS PC1, PC AS PC2
WHERE PR1.MODEL = PC1.MODEL
AND PR2.MODEL = PC2.MODEL
AND PR1.MAKER = PR2.MAKER
AND PC1.CODE != PC2.CODE
AND PC1.SPEED >= 400 
AND PC2.SPEED >= 400
