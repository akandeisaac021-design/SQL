/********************************************************************************/
/*																				*/
/*	Kroenke, Auer, Vandenberg and Yoder											*/ 
/*  Database Processing (15th Edition) Chapter 02								*/
/*																				*/
/*	Marcia's Dry Cleaning - Create Tables										*/
/*																				*/
/*	These are the MySQL 5.7 SQL code solutions									*/
/*																				*/
/********************************************************************************/
USE mdc_ch02;

CREATE TABLE CUSTOMER (
		CustomerID		Int			NOT NULL auto_increment,
		FirstName 		Char(25)	NOT NULL,
		LastName		Char(25)	NOT NULL,
		Phone			Char(12)	NOT NULL,
		EmailAddress	Char(100)	NULL,
        ReferredBy		INT			NULL,
		CONSTRAINT		CustomerPK	PRIMARY KEY (CustomerID),
        CONSTRAINT		RefBy_FK Foreign Key(ReferredBy) REFERENCES Customer(CustomerID)
			);
            
ALTER TABLE CUSTOMER auto_increment = 1;


CREATE TABLE INVOICE (
		InvoiceNumber	Int			NOT NULL auto_increment,
		CustomerID		Int			NOT NULL,
		DateIn			Date		NOT NULL,
		DateOut			Date		NULL,
		TotalAmount		Numeric(8,2)	NULL,
		CONSTRAINT		InvoicePK		PRIMARY KEY (InvoiceNumber),
		CONSTRAINT  		InvoiceCustomerFK FOREIGN KEY(CustomerID)
							REFERENCES CUSTOMER(CustomerID)
		);
ALTER TABLE INVOICE auto_increment = 2018001;


CREATE TABLE INVOICE_ITEM (
		InvoiceNumber		Int			NOT NULL,
		ItemNumber			Int			NOT NULL,
		Item				Char(50)	NOT NULL,
		Quantity			Int			NOT NULL DEFAULT 1,
		UnitPrice			Numeric(8,2)	NULL,
		CONSTRAINT		InvoiceItemPK	
						PRIMARY KEY(InvoiceNumber, ItemNumber),
		CONSTRAINT		InvoiceItemFK	FOREIGN KEY(InvoiceNumber)
							REFERENCES INVOICE(InvoiceNumber)
								ON DELETE CASCADE		
								);
