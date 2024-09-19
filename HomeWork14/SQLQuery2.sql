CREATE FUNCTION CalculateDiscount(@purchase_amount DECIMAL(10, 2))
RETURNS DECIMAL(5, 2)
AS
BEGIN
    DECLARE @Discount DECIMAL(5, 2);

    IF @purchase_amount >= 1000
        SET @Discount = 0.10;
    ELSE IF @purchase_amount >= 500
        SET @Discount = 0.05;
    ELSE
        SET @Discount = 0.00;

    RETURN @Discount;
END;

GO

ALTER TABLE Orders
ADD Discount DECIMAL(5, 2);


UPDATE Orders
SET Discount = dbo.CalculateDiscount(PurchaseAmount);