-----Payment-----
-- you can not insert or update or delete in rows from payment untel do this query in booking frist
--- we create this stored proc to  used in booking only 
------------------insert----------
CREATE OR ALTER PROC InsertIntoPayment @PaymentId INT ,@BookingId INT, @Amount DECIMAL(10, 2),@PaymentDate DATE, @PaymentMethod VARCHAR(50)
AS
	BEGIN
	INSERT INTO Payment
	VALUES (@PaymentId, @BookingId, @Amount, @PaymentDate, @PaymentMethod)
	END
GO
InsertIntoPayment 999, 7, 10000.99, '2024-06-05', 'cash'
GO
SELECT * FROM Payment
GO
-------------------------
----------------------------------UPDATE----------------------
CREATE OR ALTER PROC UpdatePayment @PaymentId INT , @Amount DECIMAL(10, 2),@PaymentDate DATE, @PaymentMethode VARCHAR(50)
AS
	BEGIN
	UPDATE Payment
	SET 
	Amount=@Amount,
	PaymentDate=@PaymentDate,
	PaymentMethod=@PaymentMethode
	WHERE PaymentID=@PaymentId
	END
GO
UpdatePayment 999 ,1253.50,'2024-05-05','Credit Card'
GO
SELECT * FROM Payment
GO
----------------------DELETE------------------
CREATE OR ALTER PROC DelteFromPayment @Id INT
AS
	BEGIN
	DELETE FROM Payment WHERE PaymentID=@Id
	END
GO
DelteFromPayment 999
GO
SELECT * FROM Payment
GO
------------------------------------------------------Guest-------------------------------------
------------------------------------------------------INSERT -------------------------------
CREATE OR ALTER PROC GuestInsertSP @GuestId INT, @FirstName VARCHAR(50), @LastName VARCHAR(50), @BirthDate DATE, @Address VARCHAR(50), @Phone VARCHAR(11), @Email VARCHAR(50), @Password VARCHAR(10)
AS
BEGIN
INSERT INTO  Guest(GuestID, FirstName, LastName, DateOfBirth, Adress, Phone, Email, Password)
VALUES (@GuestId, @FirstName, @LastName, @BirthDate, @Address, @Phone, @Email, @Password)
END
GO
GuestInsertSP 25,'asdasd','asdasdsad','1980-02-14','qweewqeqewqeqr','0136958475','asd@asdqd','pasowre125'
GO
select * from Guest
GO
-----------------------------------------------------------UPDATE------------------------------------------------------------------
CREATE OR ALTER PROC GuestUpdateSP @GuestId INT, @FirstName VARCHAR(50), @LastName VARCHAR(50), @BirthDate DATE, @Address VARCHAR(50), @Phone VARCHAR(11), @Email VARCHAR(50), @Password VARCHAR(10)
AS
BEGIN
UPDATE Guest
SET FirstName = @FirstName, LastName = @LastName, DateOfBirth = @BirthDate, Adress = @Address, Phone = @Phone, Email = @Email, Password = @Password
WHERE GuestID = @GuestId
END
GO
GuestUpdateSP 25,'asfqfda','aswefs','1995-05-14','qweewqeqewqeqr','0136958475','asd@asdqd','pasowre125'
GO
SELECT * FROM Guest
GO
-----------------------------------------------------------DELETE------------------------------------------------------------------
CREATE OR ALTER PROC GuestDeleteSP @GuestId INT
AS
BEGIN
DELETE FROM Payment WHERE BookingID IN (SELECT bk.BookingID FROM Booking bk WHERE bk.GuestID = @GuestId)
DELETE FROM Booking WHERE GuestID = @GuestId
DELETE FROM Guest WHERE GuestID = @GuestId
end
GO
GuestDeleteSP 25
GO
SELECT *FROM Booking
GO
SELECT * FROM Payment
GO
-----------------------------------------------------------Booking-------------------------------------------------------------------
-----------------------------------------------------------INSERT------------------------------------------------------------------
CREATE OR ALTER PROC BookingInsertSP @BookingId INT, @GuestId INT, @RoomNumber INT, @CheckInDate DATE, @CheckOutDate DATE, @PaymnetMethod VARCHAR(20)
AS
BEGIN
	DECLARE @TotalPrice DECIMAL(10,2), @RoomStatus VARCHAR(20)
	SET @TotalPrice= ((SELECT DATEDIFF(DAY,@CheckInDate,@CheckOutDate))*(SELECT PricePerNight FROM RoomType, Room WHERE RoomType.TypeID=Room.TypeID AND Room.RoomID=@RoomNumber))
	IF @CheckInDate < FORMAT(GETDATE(),'yyyy-MM-dd') PRINT('Check In Date Must Be After Date Of Today')
	ELSE
		BEGIN
			DECLARE CheckAvailability CURSOR
			FOR
			SELECT bk.CheckinDate, bk.CheckoutDate
			FROM Booking bk
			WHERE bk.RoomNumber = @RoomNumber AND bk.CheckoutDate > FORMAT(GETDATE(),'yyyy-MM-dd')
			FOR READ ONLY
			DECLARE @CheckIn DATE, @CheckOut DATE, @Condition INT = 0
			OPEN CheckAvailability 
			FETCH CheckAvailability INTO @CheckIn, @CheckOut
			WHILE @@FETCH_STATUS =0 
			BEGIN
				IF (@CheckInDate BETWEEN @CheckIn AND @CheckOut)
					OR (@CheckOutDate BETWEEN @CheckIn AND @CheckOut)
					OR (@CheckIn BETWEEN @CheckInDate AND @CheckOutDate)
					BEGIN
						SET @Condition = 1
					END
				FETCH CheckAvailability INTO @CheckIn, @CheckOut
			END
			IF @Condition = 1
				PRINT(CONCAT('Sorry. Room Number ', @RoomNumber, ' Is Currently Occupied, Please Choose A Different Room.'))
			ELSE
				BEGIN
					INSERT INTO  Booking(BookingID, GuestID, RoomNumber, CheckInDate, CheckOutDate, TotalPrice)
					VALUES (@BookingId, @GuestId, @RoomNumber, @CheckInDate, @CheckOutDate, @TotalPrice)
					EXEC InsertIntoPayment @BookingId,@BookingId,@TotalPrice,@CheckOutDate,@PaymnetMethod
				END
			CLOSE CheckAvailability
			DEALLOCATE CheckAvailability
		END
END
GO
BookingInsertSP 26,20,5,'2024-07-23','2024-07-28','cash'
GO
--SELECT * FROM Booking
--GO
--SELECT * FROM Payment
--GO
-----------------------------------------------------------UPDATE------------------------------------------------------------------
CREATE OR ALTER PROC BookingUpdateSP @BookingId INT, @RoomNumber INT, @CheckInDate DATE, @CheckOutDate DATE
AS
DECLARE @TotalPrice DECIMAL(10,2), @paymid INT
SET @TotalPrice= ((SELECT DATEDIFF(DAY,@CheckInDate,@CheckOutDate))*(SELECT PricePerNight 
FROM RoomType,Room WHERE RoomType.TypeID=Room.TypeID AND Room.RoomID=@RoomNumber))
BEGIN
UPDATE Booking
SET RoomNumber = @RoomNumber, CheckinDate = @CheckInDate, CheckoutDate = @CheckOutDate, TotalPrice = @TotalPrice
WHERE BookingID = @BookingId
SET @paymid=(SELECT p.PaymentID FROM Payment p WHERE p.BookingID=@BookingId)
EXEC UpdatePayment @paymid, @TotalPrice,@CheckOutDate,'Cash'
END
GO
BookingUpdateSP 26,20,'2024-06-20','2024-06-26'
GO
--SELECT * FROM Booking
--GO
--SELECT * FROM Payment
--GO
-----------------------------------------------------------DELETE------------------------------------------------------------------
CREATE OR ALTER PROC BookingDeleteSP @BookingId INT
AS
DECLARE @paymid INT
SET @paymid=(SELECT p.PaymentID FROM Payment p WHERE p.BookingID=26)
BEGIN
EXEC DelteFromPayment @paymid
DELETE FROM Booking WHERE BookingID=  @BookingId
END
GO
EXECUTE BookingDeleteSP 26
GO
