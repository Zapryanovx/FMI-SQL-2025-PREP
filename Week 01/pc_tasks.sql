SELECT MODEL, SPEED AS MHz, HD AS GB  
FROM PC
WHERE PRICE < 1200;

SELECT DISTINCT MAKER
FROM PRODUCT

SELECT MODEL, RAM, SCREEN
FROM LAPTOP
WHERE PRICE > 1000

SELECT * FROM PRINTER
WHERE COLOR='y'

SELECT MODEL, SPEED, HD FROM PC
WHERE (CD='12x' OR CD='16x') AND PRICE < 2000