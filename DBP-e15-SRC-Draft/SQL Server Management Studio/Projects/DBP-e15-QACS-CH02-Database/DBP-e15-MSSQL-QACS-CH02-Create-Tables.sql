/********************************************************************************/
/*																				*/
/*	Kroenke, Auer, Vandenberg and Yoder											*/ 
/*  Database Processing (15th Edition) Chapter 02								*/
/*																				*/
/*	The Queen Anne Curiousity Shop [QACS_CH02] Database Create Tables			*/
/*																				*/
/*	These are the Microsoft SQL Server 2016/2017 SQL code solutions				*/
/*																				*/
/********************************************************************************/
/*																				*/
/*	NOTE:  These SQL Statements use the following surrogate keys:				*/
/*																				*/
/*		CUSTOMER:	Start at 1, Increment by 1 - IDENTITY (1, 1) 				*/
/*		ITEM:		Start at 1, Increment by 1 - IDENTITY (1, 1)				*/
/*		SALE:		Start at 1, Increment by 1 - IDENTITY (1, 1)				*/
/*																				*/
/********************************************************************************/

USE QACS_CH02
GO

CREATE  TABLE CUSTOMER(
	CustomerID			Int					NOT NULL IDENTITY (1, 1),
	LastName			Char(25)			NOT NULL,
	FirstName			Char(25)			NOT NULL,
	EmailAddress		Varchar(100)		NULL,
	EncryptedPassword	Varchar(50)			NULL,
	[Address]			Char(35)			NULL,
	City				Char(35)			NULL,
	[State]				Char(2)				NULL,
	ZIP					Char(10)			NULL,
	Phone				Char(12)			NOT NULL,
	ReferredBy			Int					NULL,
	CONSTRAINT 			CUSTOMER_PK 		PRIMARY KEY(CustomerID),
	CONSTRAINT  		ReferredBy_Cust_FK 	FOREIGN KEY(ReferredBy)
								REFERENCES CUSTOMER(CustomerID)
									ON UPDATE NO ACTION
									ON DELETE NO ACTION
	);

/*****   ITEM Table As Used in Chapter02   **************************************/

CREATE  TABLE ITEM(
	ItemID				Int	 				NOT NULL IDENTITY (1,1),
	ItemDescription		Varchar(255)		NOT NULL,
	CompanyName			Varchar(100)		NOT NULL,
	PurchaseDate		Date				NOT NULL,
	ItemCost			Numeric(9,2)		NOT NULL,
	ItemPrice			Numeric(9,2)		NOT NULL,
	CONSTRAINT 			ITEM_PK				PRIMARY KEY (ItemID),
	);

CREATE  TABLE SALE(
    SaleID				Int					NOT NULL IDENTITY (1, 1),
	CustomerID			Int	 				NOT NULL,
	SaleDate			Date				NOT NULL,
	SubTotal			Numeric(15,2)		NULL,
	Tax					Numeric(15,2)		NULL,
	Total				Numeric(15,2)		NULL,
    CONSTRAINT 			SALE_PK 			PRIMARY KEY (SaleID),
	CONSTRAINT 			SALE_CUSTOMER_FK	FOREIGN KEY (CustomerID)
							REFERENCES Customer(CustomerID)
								ON UPDATE NO ACTION
								ON DELETE NO ACTION,
	);

/*****   SALE_ITEM Table As Used in Chapter02   *********************************/

CREATE  TABLE SALE_ITEM(
	SaleID				Int					NOT NULL,
	SaleItemID			Int					NOT NULL,
	ItemID				Int	 				NOT NULL,
	ItemPrice			Numeric(9,2)		NOT NULL,
    CONSTRAINT 			SALE_ITEM_PK 		PRIMARY KEY (SaleID, SaleItemID),
	CONSTRAINT 			SALE_ITEM_SALE_FK FOREIGN KEY (SaleID)
							REFERENCES SALE(SaleID)
 								ON UPDATE NO ACTION
 								ON DELETE CASCADE,
 	CONSTRAINT 			SALE_ITEM_ITEM_FK FOREIGN KEY (ItemID)
 							REFERENCES ITEM(ItemID)
 								ON UPDATE NO ACTION
 								ON DELETE NO ACTION
    );
 

/********************************************************************************/
