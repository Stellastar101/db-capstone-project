DELIMITER //

CREATE PROCEDURE GetMaxQuantity(OUT max_quantity INT)
BEGIN
    SELECT MAX(Quantity) INTO max_quantity FROM Orders;
END//

DELIMITER ;


SET @max_quantity = 0;
CALL GetMaxQuantity(@max_quantity);
SELECT @max_quantity AS MaximumQuantity;

