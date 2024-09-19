BEGIN TRANSACTION;


UPDATE Inventory
SET Quantity = Quantity - @SoldQuantity
WHERE ProductID = @ProductID;


INSERT INTO Transactions (ProductID, QuantitySold, TransactionDate)
VALUES (@ProductID, @SoldQuantity, GETDATE());


COMMIT;


ROLLBACK;

SELECT *
FROM Transactions
WHERE ProductID = @ProductID
AND QuantitySold = @SoldQuantity
AND TransactionDate = GETDATE();