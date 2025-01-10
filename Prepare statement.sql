PREPARE GetOrderDetail FROM 'SELECT OrderId, Quantity, TotalCost FROM Orders WHERE OrderId = ?';
SET @id = 1;
EXECUTE GetOrderDetail USING @id;
