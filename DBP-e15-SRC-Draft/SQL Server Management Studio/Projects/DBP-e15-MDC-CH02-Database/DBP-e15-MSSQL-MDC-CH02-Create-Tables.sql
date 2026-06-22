/********************************************************************************/
/*																				*/
/*	Kroenke, Auer, Vandenberg and Yoder											*/ 
/*  Database Processing (15th Edition) Chapter 02								*/
/*																				*/
/*	Marcia's Dry Cleaning [MDC_CH02] Database Create Tables						*/
/*																				*/
/*	These are the Microsoft SQL Server 2016/2017 SQL code solutions				*/
/*																				*/
/********************************************************************************/
/*																				*/
/*	NOTE:  These SQL Statements use the following surrogate keys:				*/
/*																				*/
/*		CUSTOMER:	Start at 1, Increment by 1 - IDENTITY (1, 1) 				*/
/*		INVOICE:	Start at 2018001, Increment by 1 - IDENTITY (2018001, 1)	*/
/*																				*/
/********************************************************************************/

USE MDC_CH02
GO

CREATE TABLE CUSTOMER(
		CustomerID			Int					NOT NULL IDENTITY (1, 1),
		FirstName 			Char(25)			NOT NULL,
		LastName			Char(25)			NOT NULL,
		Phone				Char(12)			NOT NULL,
		EmailAddress		Varchar(100)		NULL,
		ReferredBy			Int					NULL,
		CONSTRAINT			CustomerPK			PRIMARY KEY(CustomerID),
		CONSTRAINT  		ReferredBy_Cust_FK 	FOREIGN KEY(ReferredBy)
								REFERENCES CUSTOMER(CustomerID)
									ON UPDATE NO ACTION
									ON DELETE NO ACTION
		);


CREATE TABLE INVOICE(
		InvoiceNumber		Int					NOT NULL IDENTITY (2018001, 1),
		CustomerID			Int					NOT NULL,
		DateIn				Date				NOT NULL,
		DateOut				Date				NULL,
		TotalAmount			Numeric(8,2)		NULL,
		CONSTRAINT			InvoicePK			PRIMARY KEY (InvoiceNumber),
		CONSTRAINT  		Invoice_Cust_FK 	FOREIGN KEY(CustomerID)
								REFERENCES CUSTOMER(CustomerID)
									ON UPDATE NO ACTION
									ON DELETE NO ACTION
		);

CREATE TABLE INVOICE_ITEM(
		InvoiceNumber		Int					NOT NULL,
		ItemNumber			Int					NOT NULL,
		Item				Char(50)			NOT NULL,
		Quantity			Int					NOT NULL DEFAULT 1,
		UnitPrice			Numeric(8,2)		NULL,
		CONSTRAINT			Invoice_ItemPK		PRIMARY KEY(InvoiceNumber, ItemNumber),
		CONSTRAINT			Item_Invoice_FK		FOREIGN KEY(InvoiceNumber)
								REFERENCES INVOICE(InvoiceNumber)
									ON UPDATE CASCADE
									ON DELETE CASCADE,
		);

/********************************************************************************/





