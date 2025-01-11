DELIMITER //

CREATE PROCEDURE CancelBooking(
    IN bookingID INT
)
BEGIN
    -- Check if record exist
    IF EXISTS (SELECT 1 FROM Bookings WHERE BookingID = inputBookingID) THEN
        -- Delete the booking
        DELETE FROM Bookings WHERE BookingID = inputBookingID;
        -- Confirm deletion
        SELECT CONCAT('Booking ', bookingID, ' canceled.') AS Message;
    ELSE
        -- Notify if booking doesn't exist
        SELECT CONCAT('Booking ', bookingID, ' does not exist.') AS Message;
    END IF;
END //

DELIMITER ;