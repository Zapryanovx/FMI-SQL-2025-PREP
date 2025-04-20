CREATE TABLE Product
(
	model char(4),
	maker char(1),
	type varchar(7)
);

CREATE TABLE Printer
(
	code integer,
	model char(4),
	price decimal(10, 2)
);

INSERT INTO Product
VALUES('p1', 'A', 'Printer');
INSERT INTO Product
VALUES('p2', 'B', 'Printer');
INSERT INTO Product
VALUES ('p3', 'C', 'Printer');

INSERT INTO Printer
VALUES(1, 'p1', 100);
INSERT INTO Printer
VALUES(2, 'p2', 200);
INSERT INTO Printer
VALUES(3, 'p3', 300);

ALTER TABLE Printer
ADD type varchar(6) CHECK (type IN ('laser', 'matrix', 'jet')),
color char(1) DEFAULT 'n' CHECK (color IN ('y', 'n'))

ALTER TABLE Printer DROP COLUMN PRICE

DROP TABLE Printer;
DROP TABLE Product;