DELIMITER //

CREATE PROCEDURE AddValidBooking (
    IN bookingDate DATE,
    IN tableNumber INT,
    IN customerName VARCHAR(255)
)
BEGIN
    DECLARE tableBooked INT;
    START TRANSACTION;
    SELECT COUNT(*)
    INTO tableBooked
    FROM Bookings
    WHERE BookingDate = bookingDate AND TableNumber = tableNumber;
    IF tableBooked > 0 THEN
        ROLLBACK;
        SELECT CONCAT('Booking failed: Table ', tableNumber, ' is already booked on ', DATE_FORMAT(bookingDate, '%Y-%m-%d')) AS BookingStatus;
    ELSE
        INSERT INTO Bookings (BookingDate, TableNumber, CustomerName)
        VALUES (bookingDate, tableNumber, customerName);
        COMMIT;
        SELECT CONCAT('Booking successful: Table ', tableNumber, ' has been booked for ', customerName, ' on ', DATE_FORMAT(bookingDate, '%Y-%m-%d')) AS BookingStatus;
    END IF;
END //

DELIMITER ;
