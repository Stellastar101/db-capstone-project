DROP procedure AddBooking;
DELIMITER //
CREATE PROCEDURE AddBooking (
	IN bookingID INT,
    IN bookingDate DATE,
    IN tableNumber INT,
    IN customerID INT 
    )
BEGIN
INSERT into Bookings (BookingID, BookingDate, TableNumber, CustomerID) VALUES (bookingID,bookingDate,tableNumber,CustomerId) ;
END //
DELIMITER ;
