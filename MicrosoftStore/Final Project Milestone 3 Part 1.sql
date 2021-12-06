/* 
USE MicrosoftStore;
SELECT AVG(ListedPrice) AS 'Average Game Price'
FROM Games;

USE MicrosoftStore;
SELECT State, COUNT(DISTINCT CustomerID) AS '# of Customers'
FROM Locations
JOIN Customers ON Locations.LocationID = Customers.LocationID
GROUP BY Locations.State;

USE MicrosoftStore;
SELECT MAX(ListedPrice) AS 'Maximum App Price'
FROM Apps

USE MicrosoftStore;
SELECT COUNT(DISTINCT Games.Genre) AS '# of Game Genres', COUNT(DISTINCT Apps.Genre) AS '# off App Genres'
FROM Games, Apps;
*/
