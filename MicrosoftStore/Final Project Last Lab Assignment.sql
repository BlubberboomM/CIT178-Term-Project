/* Max Mackin 

***Final Project Procedures***

USE MicrosoftStore;
GO
CREATE PROC spReceipt
AS
SELECT PurchaseID,GameID, AppID, PurchaseDate
FROM PurchaseDetails;
GO
EXEC spReceipt;


CREATE PROC spFindPublisher
	@Genre nvarchar(20)
AS
BEGIN
	SELECT Publisher
	FROM Games
	WHERE Genre LIKE @Genre;
END
GO
EXEC spFindPublisher 'FPS';


CREATE PROC spPurchaseCount
	@CustomerID int, @NumberOfPurchases int OUTPUT
AS
SELECT CustomerID, NumberOfPurchases = COUNT(PurchaseID)
FROM Purchases
WHERE CustomerID = @CustomerID
GROUP BY CustomerID
GO

DECLARE @CustomerID int
EXEC spPurchaseCount 2, @NumberOfPurchases OUTPUT
PRINT 'Number Of Products Purchased';
PRINT @NumberOfPurchases;

******* The two snippets above this were an attempt at creating a stored procedure with one input and one output parameter
I could not figure out the issue in the end so I left it as is, sorry.********


CREATE PROC spPublisherGames
	@PublisherName varchar(40)
AS
DECLARE @GameCount int;
SELECT @GameCount = COUNT(GameID)
FROM Games
WHERE Publisher LIKE @PublisherName;
RETURN @GameCount;
GO
DECLARE @GameCount int;
EXEC @GameCount = spPublisherGames 'Microsoft Studios';
SELECT @GameCount AS 'Number of Games by Publisher';


Final Project User Defined Functions

CREATE FUNCTION fnGameID
	(@NameOfGame varchar(40))
	RETURNS int
BEGIN
	RETURN (SELECT GameID FROM Games WHERE NameOFGame = @NameOfGame);
END;
GO
SELECT NameOfGame, Publisher
FROM Games
WHERE GameID = dbo.fnGameID('PAYDAY 2');


CREATE FUNCTION fnGameID2
	(@PurchaseID int)
	RETURNS TABLE
RETURN
	(SELECT * FROM PurchaseDetails WHERE @PurchaseID = GameID);
SELECT * FROM dbo.fnGameID2(2)



Final Project Triggers

CREATE TRIGGER TestCustomers_DELETE ON TestCustomers
    AFTER DELETE
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @CustomerID nchar(5)
    SELECT @CustomerID =DELETED.CustomerID
    FROM DELETED

    INSERT INTO CustomerLogs
    VALUES(@CustomerID, 'Deleted')
END

DELETE FROM TestCustomers WHERE CustomerID='1';

SELECT * FROM CustomerLogs



SELECT * INTO TestCustomers
FROM Customers;

CREATE TABLE CustomerLogs(
    CustomerId nchar(5),
    status varchar(30));

CREATE TRIGGER TestCustomers_INSERT ON TestCustomers
    AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @CustomerID nchar(5)
    SELECT @CustomerID =INSERTED.CustomerId
    FROM INSERTED

    INSERT INTO CustomerLogs
    VALUES(@CustomerId, 'Inserted')
END

INSERT INTO TestCustomers (CustomerID, FullName, Address, LocationID) VALUES (7, 'Gerald Gear', '2922 G Drive', 7);

SELECT * FROM CustomerLogs;



CREATE TRIGGER TestCustomers_UPDATE ON TestCustomers
    AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @CustomerID nchar(5)
	DECLARE @Action varchar(50)
    SELECT @CustomerID = INSERTED.CustomerID
    FROM INSERTED 

    IF UPDATE(CustomerID)
        SET @Action = 'Updated CustomerID'   

    IF UPDATE(FullName)
        SET @Action = 'Updated FullName'

    IF UPDATE(Address)
        SET @Action = 'Updated Address' 
		
	IF UPDATE (LocationID)
		SET @Action = 'Updated LocationID'

    INSERT INTO CustomerLogs
    VALUES(@CustomerId, @Action)
END

UPDATE TestCustomers SET FullName = 'Gerald Gears' WHERE FullName = 'Gerald Gear';

SELECT * FROM CustomerLogs;
*/