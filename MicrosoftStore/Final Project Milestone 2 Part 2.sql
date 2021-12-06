/* USE MicrosoftStore;

GO

INSERT INTO Games VALUES (1, 'Destiny 2', 'Bungie', 'FPS', 'Teen', 0.00)
INSERT INTO Games VALUES (2, 'PAYDAY 2', '505 Games', 'FPS', 'Mature', 19.99)
INSERT INTO Games VALUES (3, 'Rocket League', 'Psyonix', 'Racing', 'Everyone', 0.00)
INSERT INTO Games VALUES (4, 'Halo Infinite', '343 Industries', 'FPS', 'Mature', 59.99)
INSERT INTO Games VALUES (5, 'Minecraft', 'Microsoft Studios', 'Adventure', 'Everyone', 19.99)

USE MicrosoftStore;
GO
INSERT INTO Apps VALUES (1, 'YouTube', 'Google LLC', 'Entertainment', 0.00)
INSERT INTO Apps VALUES (2, 'Spotify', 'Spotify AB', 'Music', 0.00)
INSERT INTO Apps VALUES (3, 'Zinnia Radio', 'my robot zone', 'Music', 1.89)
INSERT INTO Apps VALUES (4, 'SomaFM', 'Level 6 Productions', 'Music', 0.00)
INSERT INTO Apps VALUES (5, 'Torrex Pro', 'Finebits OU', 'Tool', 9.99)


USE MicrosoftStore;
GO
--********Do Locations next when you get back because you have to do all the ones without foreign keys first*******
INSERT INTO Locations VALUES (1, 'Traverse City', 'Michigan', 'United States', '49689')
INSERT INTO Locations VALUES (2, 'Traverse City', 'Michigan', 'United States', '49685')
INSERT INTO Locations VALUES (3, 'San Jose', 'California', 'United States', '94088')
INSERT INTO Locations VALUES (4, 'Detroit', 'Michigan', 'United States', '48127')
INSERT INTO Locations VALUES (5, 'Sumter', 'South Carolina', 'United States', '29150')

INSERT INTO Customers VALUES (1, 'Max Mackin', '1111 Top Dr.', 1)
INSERT INTO Customers VALUES (2, 'Bob Brinham', '2222 Left Dr.', 2)
INSERT INTO Customers VALUES (3, 'Cole Cash', '3333 Right Dr.', 3)
INSERT INTO Customers VALUES (4, 'Danny Dupe', '4444 Bottom Dr.', 4)
INSERT INTO Customers VALUES (5, 'Eric Evlon', '5555 Middle Dr.', 5)

INSERT INTO Purchases VALUES (1, 1, 1)
INSERT INTO Purchases VALUES (2, 2, 2)
INSERT INTO Purchases VALUES (3, 3, 3)
INSERT INTO Purchases VALUES (4, 4, 4)
INSERT INTO Purchases VALUES (5, 5, 5)

INSERT INTO PurchaseDetails VALUES (1, 1, 1, 1, '9/6/2017')
INSERT INTO PurchaseDetails VALUES (2, 2, 2, 2, '8/13/2013')
INSERT INTO PurchaseDetails VALUES (3, 3, 3, 3, '7/7/2015')
INSERT INTO PurchaseDetails VALUES (4, 4, 4, 4, '12/8/2021')
INSERT INTO PurchaseDetails VALUES (5, 5, 5, 5, '8/6/2011')
*/
SELECT * FROM PurchaseDetails