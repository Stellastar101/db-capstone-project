
 -- Delete order record based on the input OrderID

DELIMITER $$

CREATE PROCEDURE CancelOrder(IN order_id INT)
BEGIN
   
    DELETE FROM Orders WHERE OrderID = order_id;
END$$

DELIMITER ;

-- CALL CancelOrder(5);
-- SELECT * FROM Orders WHERE OrderID = 5;
