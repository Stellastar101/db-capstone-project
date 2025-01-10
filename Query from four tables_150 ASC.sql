SELECT 
    orders.CustomerID, 
    customers.FirstName, 
    orders.OrderID,
    orders.TotalCost, 
    menus.MenuName, 
    menuitems.CourseName
FROM orders
INNER JOIN customers 
    ON orders.CustomerID = customers.CustomerID
INNER JOIN menus 
    ON orders.MenuID = menus.MenuID
INNER JOIN menuitems 
    ON menus.MenuItemID = menuitems.MenuItemID
WHERE orders.TotalCost > 150
ORDER BY orders.TotalCost ASC;

