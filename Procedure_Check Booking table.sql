DELIMITER //

CREATE PROCEDURE CheckBooking(
    IN bookingDate DATE,
    IN tableNumber INT
)
BEGIN
    DECLARE tableStatus VARCHAR(20);
    
    SELECT CASE
        WHEN COUNT(*) > 0 THEN 'Booked'
        ELSE 'Available'
    END INTO tableStatus
    FROM Bookings
    WHERE BookingDate = bookingDate 
    AND TableNumber = tableNumber;
    
    SELECT CONCAT('Table ', tableNumber, ' on ', 
           DATE_FORMAT(bookingDate, '%Y-%m-%d'), 
           ' is ', tableStatus) AS 'Booking Status';
END //

DELIMITER ;