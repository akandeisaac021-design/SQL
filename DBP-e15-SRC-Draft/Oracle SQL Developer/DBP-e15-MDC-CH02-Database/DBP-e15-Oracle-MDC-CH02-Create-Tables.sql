/********************************************************************************/
/*																				*/
/*	Kroenke, Auer, Vandenberg, and Yoder					*/
/*	Database Processing (15th Edition) Chapter 2			*/
/*										*/
/*	MDC Database: create table statements						*/
/*												*/
/*	These are the Oracle Express 11gR2 and 12c Release 2 SQL code solutions			*/
/*	   for the Chapter 2 MDC Database	                                              */
/******************************************************************************/

/************ MDC ************************************************************/

CREATE TABLE CUSTOMER (
		CustomerID		Int				NOT NULL,
		FirstName 		Char(25)		NOT NULL,
		LastName			Char(25)		NOT NULL,
		Phone				Char(12)		NOT NULL,
		EmailAddress			VarChar(100)		NULL,
		ReferredBy		Int	NULL,
		CONSTRAINT		Customer_PK	PRIMARY KEY (CustomerID),
		CONSTRAINT		Customer_FK_Refer  FOREIGN KEY (ReferredBy)
					REFERENCES CUSTOMER (CustomerID)
		);

CREATE TABLE INVOICE (
		InvoiceNumber		Int				NOT NULL,
		CustomerID		Int				NOT NULL,
		DateIn				Date			NOT NULL,
		DateOut			Date			NULL,
		TotalAmount				Number(8,2)	NULL,
		CONSTRAINT		Invoice_PK		PRIMARY KEY (InvoiceNumber),
		CONSTRAINT  		InvoiceCustomerFK FOREIGN KEY(CustomerID)
								REFERENCES CUSTOMER(CustomerID)
		);


CREATE TABLE INVOICE_ITEM (
		InvoiceNumber		Int				NOT NULL,
		ItemNumber		Int				NOT NULL,
		Item			Char(50)		NOT NULL,
		Quantity			Int		NOT NULL,
		UnitPrice			Number(8,2)	NULL,
		CONSTRAINT		InvoiceItem_PK	
								PRIMARY KEY(InvoiceNumber, ItemNumber),
		CONSTRAINT		InvoiceItemFK	FOREIGN KEY(InvoiceNumber)
								REFERENCES INVOICE(InvoiceNumber)
									ON DELETE CASCADE
		);

	


/******************************************************************************/
