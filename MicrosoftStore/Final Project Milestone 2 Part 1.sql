/* CREATE DATABASE MicrosoftStore;

GO

USE MicrosoftStore;

CREATE TABLE Games(
GameID int NOT NULL,
NameOfGame varchar(50) NOT NULL,
Publisher varchar(50) NOT NULL,
Genre varchar(20) NOT NULL,
ESRBRating varchar(10) NOT NULL,
ListedPrice money,
PRIMARY KEY(GameID)
);

GO

CREATE TABLE Apps(
AppID int NOT NULL,
NameOfApp varchar(50) NOT NULL,
Publisher varchar(50) NOT NULL,
Genre varchar(20) NOT NULL,
ListedPrice money,
PRIMARY KEY(AppID)
);

GO

CREATE TABLE Customers(
CustomerID int NOT NULL,
FullName varchar(50) NOT NULL,
Address varchar(50),
LocationID int NOT NULL,
PRIMARY KEY(CustomerID)
);

GO

CREATE TABLE Locations(
LocationID int NOT NULL,
City varchar(50),
State varchar(20),
Country varchar(30),
ZipCode varchar(10),
PRIMARY KEY(LocationID)
);

GO

CREATE TABLE Purchases(
PurchaseID int NOT NULL,
LocationID int NOT NULL,
CustomerID int NOT NULL,
PRIMARY KEY(PurchaseID)
);

GO

CREATE TABLE PurchaseDetails(
PurchaseDetailsID int NOT NULL,
PurchaseID int NOT NULL,
GameID int,
AppID int,
PurchaseDate varchar(25) NOT NULL,
PRIMARY KEY(PurchaseDetailsID)
);

USE MicrosoftStore;

GO

ALTER TABLE Customers WITH CHECK
ADD CONSTRAINT FK_LocationID FOREIGN KEY(LocationID) REFERENCES Locations(LocationID)
ON UPDATE CASCADE

GO

ALTER TABLE Purchases WITH CHECK
ADD CONSTRAINT FK_LocationID2 FOREIGN KEY(LocationID2) REFERENCES Locations(LocationID)
ON UPDATE CASCADE

GO

ALTER TABLE Purchases WITH CHECK
ADD CONSTRAINT FK_CustomerID FOREIGN KEY(CustomerID) REFERENCES Customers(CustomerID)
ON UPDATE CASCADE

GO

ALTER TABLE PurchaseDetails WITH CHECK
ADD CONSTRAINT FK_PurchaseID FOREIGN KEY(PurchaseID) REFERENCES Purchases(PurchaseID)
ON UPDATE CASCADE

GO

ALTER TABLE PurchaseDetails WITH CHECK
ADD CONSTRAINT FK_GameID FOREIGN KEY(GameID) REFERENCES Games(GameID)
ON UPDATE CASCADE

GO

ALTER TABLE PurchaseDetails WITH CHECK
ADD CONSTRAINT FK_AppID FOREIGN KEY(AppID) REFERENCES Apps(AppID)
ON UPDATE CASCADE


USE MicrosoftStore;

GO

CREATE INDEX idx_LocationID ON Customers(LocationID);

GO

CREATE INDEX idx_LocationID2 ON Purchases(LocationID2);

GO

CREATE INDEX idx_CustomerID ON Purchases(CustomerID);

GO 

CREATE INDEX idx_PurchaseID ON PurchaseDetails(PurchaseID);

GO

CREATE INDEX idx_GameID ON PurchaseDetails(GameID);

GO

CREATE INDEX idx_AppID ON PurchaseDetails(AppID);
*/