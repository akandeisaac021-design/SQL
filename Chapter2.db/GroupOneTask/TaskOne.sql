SELECT * FROM CUSTOMER, INVOICE, INVOICE_ITEM;

SELECT FirstName, LastName, Phone FROM CUSTOMER;

SELECT FirstName, LastName, Phone FROM CUSTOMER where FirstName = "Nikki";

SELECT FirstName, LastName, Phone, DateIn, DateOut
FROM CUSTOMER, INVOICE
WHERE TotalAmount > 100.00;

SELECT FirstName, LastName, Phone FROM CUSTOMER where FirstName LIKE "B%"; 



SELECT FirstName, LastName, Phone FROM CUSTOMER where LastName LIKE "%cat%";

SELECT FirstName, LastName, Phone FROM CUSTOMER where phone LIKE "_23%"; 

SELECT max(TotalAmount), min(TotalAmount) from INVOICE;
SELECT avg(TotalAmount) from INVOICE;
SELECT count(*) from CUSTOMER;

SELECT * FROM CUSTOMER ORDER BY FirstName

SELECT      LastName, 
            FirstName, 
            COUNT(*) AS NumberOfCustomers
FROM        CUSTOMER
GROUP BY    LastName, FirstName;

