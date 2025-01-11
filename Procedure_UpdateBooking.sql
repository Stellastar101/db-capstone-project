DELIMITER //

CREATE PROCEDURE UpdateBooking (
    IN BookingIDinput INT,
    IN BookingDateinput DATE,
    IN TableNumberinput INT,
    IN CustomerIDinput INT
)
BEGIN
    UPDATE Bookings
    SET 
        BookingDate = inputBookingDateinput,
        TableNumber = inputTableNumberinput,
        CustomerID = inputCustomerIDinput
    WHERE BookingID = BookingIDinput;
END //

DELIMITER ;
