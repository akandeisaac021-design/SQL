/********************************************************************************/
/*																				*/
/*	Kroenke, Auer, Vandenberg and Yoder											*/ 
/*  Database Processing (15th Edition) Chapter 02								*/
/*																				*/
/*	Marcia's Dry Cleaning [MDC_CH02] Database Insert Data						*/
/*																				*/
/*	These are the Microsoft SQL Server 2016/2017 SQL code solutions				*/
/*																				*/
/********************************************************************************/

USE MDC_CH02
GO

/*****  CUSTOMER Data   *********************************************************/

INSERT INTO CUSTOMER VALUES(
		'Nikki', 'Kaccaton', '723-543-1233', 'Nikki.Kaccaton@somewhere.com', NULL);
INSERT INTO CUSTOMER VALUES(
		'Brenda', 'Catnazaro', '723-543-2344', 'Brenda.Catnazaro@somewhere.com', 1);
INSERT INTO CUSTOMER VALUES(
		'Bruce', 'LeCat', '723-543-3455', 'Bruce.LeCat@somewhere.com', 2);
INSERT INTO CUSTOMER VALUES(
		'Betsy', 'Miller', '725-654-3211', 'Betsy.Miller@somewhere.com', 3);
INSERT INTO CUSTOMER VALUES(
		'George', 'Miller', '725-654-4322', 'George.Miller@somewhere.com', 4);
INSERT INTO CUSTOMER VALUES(
		'Kathy', 'Miller', '723-514-9877', 'Kathy.Miller@somewhere.com', 2);
INSERT INTO CUSTOMER VALUES(
		'Betsy', 'Miller', '723-514-8766', 'Betsy.Miller@elsewhere.com', 1);



/*****  INVOICE Data   ************************************************************/

INSERT INTO INVOICE VALUES(
		1, '04-Oct-18', '06-Oct-18', 158.50);
INSERT INTO INVOICE VALUES(
		2, '04-Oct-18', '06-Oct-18', 25.00);
INSERT INTO INVOICE VALUES(
		1, '06-Oct-18', '08-Oct-18', 49.00);
INSERT INTO INVOICE VALUES(
		4, '06-Oct-18', '08-Oct-18', 17.50);
INSERT INTO INVOICE VALUES(
		6, '07-Oct-18', '11-Oct-18', 12.00);
INSERT INTO INVOICE VALUES(
		3, '11-Oct-18', '13-Oct-18', 152.50);
INSERT INTO INVOICE VALUES(
		3, '11-Oct-18', '13-Oct-18', 7.00);
INSERT INTO INVOICE VALUES(
		7, '12-Oct-18', '14-Oct-18', 140.50);
INSERT INTO INVOICE VALUES(
		5, '12-Oct-18', '14-Oct-18', 27.00);


/*****  INVOICE_ITEM Data   ********************************************************/

INSERT INTO INVOICE_ITEM VALUES(2018001, 1, 'Blouse', 2,  3.50);
INSERT INTO INVOICE_ITEM VALUES(2018001, 2, 'Dress Shirt', 5,  2.50);
INSERT INTO INVOICE_ITEM VALUES(2018001, 3, 'Formal Gown', 2, 10.00);
INSERT INTO INVOICE_ITEM VALUES(2018001, 4, 'Slacks–Mens', 10, 5.00);
INSERT INTO INVOICE_ITEM VALUES(2018001, 5, 'Slacks–Womens', 10, 6.00);
INSERT INTO INVOICE_ITEM VALUES(2018001, 6, 'Suit–Mens', 1,  9.00);
INSERT INTO INVOICE_ITEM VALUES(2018002, 1, 'Dress Shirt', 10, 2.50);
INSERT INTO INVOICE_ITEM VALUES(2018003, 1, 'Slacks–Mens', 5,  5.00);
INSERT INTO INVOICE_ITEM VALUES(2018003, 2, 'Slacks–Womens', 4,  6.00);
INSERT INTO INVOICE_ITEM VALUES(2018004, 1, 'Dress Shirt', 7,  2.50);
INSERT INTO INVOICE_ITEM VALUES(2018005, 1, 'Blouse', 2,  3.50);
INSERT INTO INVOICE_ITEM VALUES(2018005, 2, 'Dress Shirt', 2,  2.50);
INSERT INTO INVOICE_ITEM VALUES(2018006, 1, 'Blouse', 5,  3.50);
INSERT INTO INVOICE_ITEM VALUES(2018006, 2, 'Dress Shirt', 10, 2.50);
INSERT INTO INVOICE_ITEM VALUES(2018006, 3, 'Slacks–Mens', 10, 5.00);
INSERT INTO INVOICE_ITEM VALUES(2018006, 4, 'Slacks–Womens', 10, 6.00);
INSERT INTO INVOICE_ITEM VALUES(2018007, 1, 'Blouse', 2,  3.50);
INSERT INTO INVOICE_ITEM VALUES(2018008, 1, 'Blouse', 3,  3.50);
INSERT INTO INVOICE_ITEM VALUES(2018008, 2, 'Dress Shirt', 12, 2.50);
INSERT INTO INVOICE_ITEM VALUES(2018008, 3, 'Slacks–Mens', 8,  5.00);
INSERT INTO INVOICE_ITEM VALUES(2018008, 4, 'Slacks–Womens', 10, 6.00);
INSERT INTO INVOICE_ITEM VALUES(2018009, 1, 'Suit–Mens', 3,  9.00);


/*********************************************************************************/


