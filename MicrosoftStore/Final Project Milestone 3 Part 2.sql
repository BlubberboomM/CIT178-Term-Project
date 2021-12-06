/* Max Mackin

USE MicrosoftStore;
GO
CREATE VIEW CustomerInfo 
AS SELECT FullName, Address
FROM Customers;

CREATE VIEW ImportantGameInfo
AS SELECT NameofGame, Publisher, ListedPrice
FROM Games;

CREATE VIEW ImportantAppInfo
AS SELECT NameofApp, Publisher, ListedPrice
FROM Apps;

CREATE VIEW ReceiptInfo
AS SELECT PurchaseID, GameID, AppID, PurchaseDate
FROM PurchaseDetails

UPDATE CustomerInfo
SET FullName = 'Don Dupe'
WHERE FUllName = 'Danny Dupe';
*/

