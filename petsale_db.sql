CREATE TABLE PetSale(
	ID INTEGER NOT NULL,
	PET CHAR(20),
	SALEPRICE DECIMAL(6,2),
	PROFIT DECIMAL(6,2),
	SALEDATE DATE
	);

CREATE TABLE PET(
	ID INTEGER NOT NULL,
	ANIMAL CHAR(20),
	QUANTITY INTEGER
	);

--- Let's add some records to the newly created database---

INSERT INTO PetSale VALUES
	(1,'Cat',450.90,100.47,'2018-05-29'),
	(2, 'Dog',666.66,150.76,'2018-06-01'),
	(3,'Parrot',50.00,8.9,'2018-06-04'),
	(4,'Hamster',60.60,12,'2021-07-11'),
	(5,'Goldfish',48.48,3.5,'2023-08-14');

--- INSERTING VALES IN PET TABLE---
INSERT INTO PET VALUES
	(1,'Cat',3),
	(2,'Dog',4),
	(3,'Hamster',2);

--- Now let's run queries---
SELECT * FROM PetSale;
SELECT * FROM PET;


--- ALTER STATEMENT---
ALTER TABLE PetSale
ADD QUANTITY INTEGER;


--- UPDATE PETSALE TABLE WITH SOME VALUES---

UPDATE PetSale SET QUANTITY = 9 WHERE ID = 1;
UPDATE PetSale SET QUANTITY = 3 WHERE ID = 2;
UPDATE PetSale SET QUANTITY = 2 WHERE ID = 3;
UPDATE PetSale SET QUANTITY = 6 WHERE ID = 4;
UPDATE PetSale SET QUANTITY = 24 WHERE ID = 5;


SELECT * FROM PetSale;

---DROP THE COLUMN PROFIT FROM PETSALE---
ALTER TABLE PetSale
DROP PROFIT;

SELECT * FROM PetSale;

