/********************************************************************************/
/*																				*/
/*	Kroenke, Auer, Vandenberg and Yoder											*/ 
/*  Database Processing (15th Edition) Chapter 02								*/
/*																				*/
/*	Morgan Importing [MIS_CH02] Database Insert Data							*/
/*																				*/
/*	These are the Microsoft SQL Server 2016/2017 SQL code solutions				*/
/*																				*/
/********************************************************************************/
/*																				*/
/*	NOTE:  These SQL Statements use the following surrogate keys:				*/
/*																				*/
/*		ITEM:		Start at 1, Increment by 1 - IDENTITY (1, 1)				*/
/*		SHIPMENT:	Start at 1, Increment by 1 - IDENTITY (1, 1)				*/
/*																				*/
/********************************************************************************/

USE MI_CH02
GO

/*****   ITEM Data   ***********************************************************/

INSERT INTO ITEM VALUES
		('QE Dining Set', '07-Apr-18', 'Eastern Treasures',
		'Manila', 2, 403405, 0.01774);
INSERT INTO ITEM
		VALUES('Willow Serving Dishes', '15-Jul-18',  'Jade Antiques',
		'Singapore', 75, 102, 0.5903);
INSERT INTO ITEM
		VALUES('Large Bureau', '17-Jul-18', 'Eastern Sales',
		'Singapore', 8, 2000, 0.5903);
INSERT INTO ITEM
		VALUES('Brass Lamps', '20-Jul-18',  'Jade Antiques',
		'Singapore', 40, 50, 0.5903);

/*****   SHIPMENT Data   ***********************************************************/

INSERT INTO SHIPMENT VALUES
	('ABC Trans-Oceanic', 2008651, '10-Dec-14', '15-Mar-18', 15000.00);
INSERT INTO SHIPMENT VALUES
	('ABC Trans-Oceanic', 2009012, '10-Jan-18', '20-Mar-18', 12000.00);
INSERT INTO SHIPMENT VALUES
	('Worldwide', 49100300, '05-May-18', '17-Jun-18', 20000.00);
INSERT INTO SHIPMENT VALUES
	('International', 399400, '02-Jun-18', '17-Jul-18', 17500.00 );
INSERT INTO SHIPMENT VALUES
	('Worldwide', 84899440, '10-Jul-18', '28-Jul-18', 25000.00);
INSERT INTO SHIPMENT VALUES
	('International', 488955,  '05-Aug-18', '11-Sep-18', 18000.00);

/*****   SHIPMENT Item   ***********************************************************/

INSERT INTO SHIPMENT_ITEM VALUES(3, 1, 1, 15000);
INSERT INTO SHIPMENT_ITEM VALUES(4, 1, 4, 1200);
INSERT INTO SHIPMENT_ITEM VALUES(4, 2, 3, 9500);
INSERT INTO SHIPMENT_ITEM VALUES(4, 3, 2, 4500);


/********************************************************************************/
