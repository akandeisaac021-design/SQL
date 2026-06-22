/************************************************************/
/*															*/
/*	Kroenke, Auer, Vandenberg, and Yoder					*/
/*	Database Processing (15th Edition) Chapter 2			*/
/*															*/
/*	QACS Database: INSERT statements						*/
/*															*/
/*	These are the MySQL 5.7 SQL code solutions				*/
/*	   for the Chapter 2 QACS Database	                    */
/************************************************************/

/*****   CUSTOMER DATA   ******************************************************/

INSERT INTO CUSTOMER VALUES(null,
	'Shire', 'Robert', 'Robert.Shire@somewhere.com', '56gHjj8w',
	'6225 Evanston Ave N', 'Seattle', 'WA', '98103', '206-524-2433', NULL);
INSERT INTO CUSTOMER VALUES(null,
	'Goodyear', 'Katherine', 'Katherine.Goodyear@somewhere.com', 'fkJU0K24',
	'7335 11th Ave NE', 'Seattle', 'WA', '98105', '206-524-3544', 1);
INSERT INTO CUSTOMER VALUES(null,
	'Bancroft', 'Chris', 'Chris.Bancroft@somewhere.com', '98bpT4vw',
	'12605 NE 6th Street', 'Bellevue', 'WA', '98005', '425-635-9788', NULL);
INSERT INTO CUSTOMER VALUES(null,
	'Griffith', 'John', 'John.Griffith@somewhere.com', 'mnBh88t4',
	'335 Aloha Street', 'Seattle', 'WA', '98109', '206-524-4655', 1);
INSERT INTO CUSTOMER VALUES(null,
	'Tierney', 'Doris', 'Doris.Tierney@somewhere.com', 'as87PP3z',
	'14510 NE 4th Street', 'Bellevue', 'WA', '98005', '425-635-8677', 2);
INSERT INTO CUSTOMER VALUES(null,
	'Anderson', 'Donna', 'Donna.Anderson@elsewhere.com', '34Gf7e0t',
	'1410 Hillcrest Parkway', 'Mt. Vernon', 'WA', '98273', '360-538-7566', 3);
INSERT INTO CUSTOMER VALUES(null,
	'Svane', 'Jack', 'Jack.Svane@somewhere.com', 'wpv7FF9q',
	'3211 42nd Street', 'Seattle', 'WA', '98115', '206-524-5766', 1);
INSERT INTO CUSTOMER VALUES(null,
	'Walsh', 'Denesha', 'Denesha.Walsh@somewhere.com', 'D7gb7T84',
	'6712 24th Avenue NE', 'Redmond', 'WA', '98053', '425-635-7566', 5);
INSERT INTO CUSTOMER VALUES(null,
	'Enquist', 'Craig', 'Craig.Enquist@elsewhere.com', 'gg7ER53t',
	'534 15th Street', 'Bellingham', 'WA', '98225', '360-538-6455', 6);
INSERT INTO CUSTOMER VALUES(null,
	'Anderson', 'Rose', 'Rose.Anderson@elsewhere.com', 'vx67gH8W',
	'6823 17th Ave NE', 'Seattle', 'WA', '98105', '206-524-6877', 3);
  


/*****   ITEM DATA   **********************************************************/

/*****   ITEM Table As Used in Chapter02  ************************************/


INSERT INTO ITEM VALUES(null,
	'Antique Desk', 'European Specialties', '2017-11-07', 1800.00, 3000.00);
INSERT INTO ITEM VALUES(null,
	'Antique Desk Chair', 'Andrew Lee', '2017-11-10', 300.00, 500.00);
INSERT INTO ITEM VALUES(null,
	'Dining Table Linens', 'Linens and Things', '2017-11-14', 600.00, 1000.00);
INSERT INTO ITEM VALUES(null,
	'Candles', 'Linens and Things', '2017-11-14', 30.00, 50.00);
INSERT INTO ITEM VALUES(null,
	'Candles', 'Linens and Things', '2017-11-14', 27.00, 45.00);
INSERT INTO ITEM VALUES(null,
	'Desk Lamp', 'Lamps and Lighting', '2017-11-14', 150.00, 250.00);
INSERT INTO ITEM VALUES(null,
	'Dining Table Linens', 'Linens and Things', '2017-11-14', 450.00, 750.00);
INSERT INTO ITEM VALUES(null,
	'Book Shelf', 'Denise Harrison', '2017-11-21', 150.00, 250.00);
INSERT INTO ITEM VALUES(null,
	'Antique Chair', 'New York Brokerage', '2017-11-21', 750.00, 1250.00);
INSERT INTO ITEM VALUES(null,
	'Antique Chair', 'New York Brokerage', '2017-11-21', 1050.00, 1750.00);
INSERT INTO ITEM VALUES(null,
	'Antique Candle Holders', 'European Specialties', '2017-11-28', 210.00, 350.00);
INSERT INTO ITEM VALUES(null,
	'Antique Desk', 'European Specialties', '2018-01-05', 1920.00, 3200.00);
INSERT INTO ITEM VALUES(null,
	'Antique Desk', 'European Specialties', '2018-01-05', 2100.00, 3500.00);
INSERT INTO ITEM VALUES(null,
	'Antique Desk Chair', 'Specialty Antiques', '2018-01-06', 285.00, 475.00);
INSERT INTO ITEM VALUES(null,
	'Antique Desk Chair', 'Specialty Antiques', '2018-01-06', 339.00, 565.00);
INSERT INTO ITEM VALUES(null,
	'Desk Lamp', 'General Antiques', '2018-01-06', 150.00, 250.00);
INSERT INTO ITEM VALUES(null,
	'Desk Lamp', 'General Antiques', '2018-01-06', 150.00, 250.00);
INSERT INTO ITEM VALUES(null,
	'Desk Lamp', 'Lamps and Lighting', '2018-01-06', 144.00, 240.00);
INSERT INTO ITEM VALUES(null,
	'Antique Dining Table', 'Denesha Walsh', '2018-01-10', 3000.00, 5000.00);
INSERT INTO ITEM VALUES(null,
	'Antique Sideboard', 'Chris Bancroft', '2018-01-11', 2700.00, 4500.00);
INSERT INTO ITEM VALUES(null,
	'Dining Table Chairs', 'Specialty Antiques', '2018-01-11', 5100.00, 8500.00);
INSERT INTO ITEM VALUES(null,
	'Dining Table Linens', 'Linens and Things', '2018-01-12', 450.00, 750.00);
INSERT INTO ITEM VALUES(null,
	'Dining Table Linens', 'Linens and Things', '2018-01-12', 480.00, 800.00);
INSERT INTO ITEM VALUES(null,
	'Candles', 'Linens and Things', '2018-01-17', 30.00, 50.00);
INSERT INTO ITEM VALUES(null,
	'Candles', 'Linens and Things', '2018-01-17', 36.00, 60.00);



/*****   SALE DATA   **********************************************************/

INSERT INTO SALE VALUES(null,
  1, '2017-12-14', 3500.00, 290.50, 3790.50);
 INSERT INTO SALE VALUES(null,
  2, '2017-12-15', 1000.00, 83.00, 1083.00);
INSERT INTO SALE VALUES(null,
  3, '2017-12-15', 50.00, 4.15, 54.15);
INSERT INTO SALE VALUES(null,
  4, '2017-12-23', 45.00, 3.74, 48.74);
INSERT INTO SALE VALUES(null,
  1, '2018-01-05', 250.00, 20.75, 270.75);
INSERT INTO SALE VALUES(null,
  5, '2018-01-10', 750.00, 62.25, 812.25);
INSERT INTO SALE VALUES(null,
  6, '2018-01-12', 250.00, 20.75, 270.75);
INSERT INTO SALE VALUES(null,
  2, '2018-01-15', 3000.00, 249.00, 3249.00);
INSERT INTO SALE VALUES(null,
  5, '2018-01-25', 350.00, 29.05, 379.05);
INSERT INTO SALE VALUES(null,
  7, '2018-02-04', 14250.00, 1182.75, 15432.75);
INSERT INTO SALE VALUES(null,
  8, '2018-02-04', 250.00, 20.75, 270.75);
INSERT INTO SALE VALUES(null,
  5, '2018-02-07', 50.00, 4.15, 54.15);
INSERT INTO SALE VALUES(null,
  9, '2018-02-07', 4500.00, 373.50, 4873.50);
INSERT INTO SALE VALUES(null,
  10, '2018-02-11', 3675.00, 305.03, 3980.03);
INSERT INTO SALE VALUES(null,
  2, '2018-02-11', 800.00, 66.40, 866.40);
  

/*****   SALE_ITEM DATA   *****************************************************/

/*****   SALE_ITEM Table As Used in Chapter02  *******************************/

INSERT INTO SALE_ITEM VALUES(1, 1, 1, 3000.00);
INSERT INTO SALE_ITEM VALUES(1, 2, 2, 500.00);
INSERT INTO SALE_ITEM VALUES(2,1,3, 1000.00);
INSERT INTO SALE_ITEM VALUES(3,1,4, 50.00);
INSERT INTO SALE_ITEM VALUES(4,1,5, 45.00);
INSERT INTO SALE_ITEM VALUES(5,1,6, 250.00);
INSERT INTO SALE_ITEM VALUES(6,1,7, 750.00);
INSERT INTO SALE_ITEM VALUES(7,1,8, 250.00);
INSERT INTO SALE_ITEM VALUES(8,1,9, 1250.00);
INSERT INTO SALE_ITEM VALUES(8,2,10, 1750.00);
INSERT INTO SALE_ITEM VALUES(9,1,11, 350.00);
INSERT INTO SALE_ITEM VALUES(10,1,19, 5000.00);
INSERT INTO SALE_ITEM VALUES(10, 2, 21, 8500.00);
INSERT INTO SALE_ITEM VALUES(10, 3, 22, 750.00);
INSERT INTO SALE_ITEM VALUES(11, 1, 17, 250.00);
INSERT INTO SALE_ITEM VALUES(12, 1, 24, 50.00);
INSERT INTO SALE_ITEM VALUES(13, 1, 20, 4500.00);
INSERT INTO SALE_ITEM VALUES(14, 1, 12, 3200.00);
INSERT INTO SALE_ITEM VALUES(14, 2, 14, 475.00);
INSERT INTO SALE_ITEM VALUES(15, 1, 23, 800.00);


/********************************************************************************/