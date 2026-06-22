SELECT * FROM CUSTOMER;
SELECT * FROM INVOICE;
SELECT * FROM INVOICE_ITEM;


SELECT LastName, FirstName, Phone 
FROM CUSTOMER;


SELECT LastName, FirstName, Phone 
FROM CUSTOMER 
WHERE FirstName = 'Nikki';



SELECT c.LastName, c.FirstName, c.Phone, i.DateIn, i.DateOut
FROM CUSTOMER c
JOIN INVOICE i ON c.CustomerID = i.CustomerID
WHERE i.TotalAmount > 100.00;



SELECT LastName, FirstName, Phone 
FROM CUSTOMER 
WHERE FirstName LIKE 'B%';
