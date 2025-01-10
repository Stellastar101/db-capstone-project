USE littlelemondb;
create VIEW OrdersView AS SELECT orderID, Quantity, TotalCost FROM orders;
SELECT * FROM OrdersView;
