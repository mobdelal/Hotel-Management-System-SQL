-------  Trigger on Roomtype Table --------
CREATE OR ALTER TRIGGER	inserttype
ON RoomType
AFTER INSERT
AS
SELECT 'You have inserted the Room Type successfully'
GO
DISABLE TRIGGER inserttype ON RoomType
GO
ENABLE TRIGGER inserttype ON RoomType
GO
--INSERT INTO RoomType VALUES(12,'asd','asdasdasdad',980,3)
--DELETE FROM RoomType WHERE TypeID=12
--SELECT * FROM RoomType
------------------------------------------------------
CREATE OR ALTER TRIGGER updatetype
ON RoomType
AFTER UPDATE
AS
SELECT 'The Updateing On RoomType Is Successful'
GO
--UPDATE RoomType SET Capactiy=3 WHERE TypeID=11
--SELECT * FROM RoomType
DISABLE TRIGGER [updatetype] ON RoomType
GO
ENABLE TRIGGER [updatetype] ON RoomType
GO
--------------------------------------------------
CREATE OR ALTER TRIGGER deletetype
ON RoomType
INSTEAD OF DELETE
AS SELECT 'You Cannot Remove This Type'
GO
--DELETE FROM RoomType WHERE TypeID=11
--GO
DISABLE TRIGGER deletetype ON RoomType
GO
ENABLE TRIGGER deletetype ON RoomType
GO
--------------- Stored Procedure on Room Table-----------------------
--------------- insert data in Room table -----------------------
--SELECT * FROM Room
--GO
CREATE OR ALTER PROC insertroom @Rid INT , @Hid INT ,@typid INT , @status VARCHAR(20)
WITH ENCRYPTION
AS
BEGIN
	INSERT INTO Room VALUES(@Rid,@Hid,@typid,@status)
	SELECT 'Insert Completed Successfully'
END
GO
EXEC insertroom 62,12,8,'Available'
GO
----------------------------------------------------------------
--------------- update data in Room table-----------------------
CREATE OR ALTER PROC updateroom @Rid INT ,@typid INT , @status VARCHAR(20)
WITH ENCRYPTION
AS 
BEGIN
	UPDATE Room
	SET TypeID=@typid,Status=@status
	WHERE RoomID=@Rid
	SELECT 'Updating Is Successful'
END
GO
EXEC updateroom 62,9,'Maintenance'
GO
----------------------------------------------------------------
--------------- Delete data in Room table-----------------------
CREATE OR ALTER TRIGGER deleteroom2
ON Room
INSTEAD OF DELETE
AS SELECT 'You Cannot Remove This Room'
GO
--SELECT * FROM Room
--GO
--DELETE FROM Room WHERE RoomID=61
--GO
----------------------------------------------------------------
--------------- Update Rooms Status-----------------------------
CREATE OR ALTER PROC UpdateRoomStatusSP
AS
BEGIN
	DECLARE UpdateRoomStatus CURSOR
	FOR
	SELECT bk.RoomNumber
	FROM Booking bk
	WHERE FORMAT(GETDATE(), 'yyyy-MM-dd') BETWEEN bk.CheckinDate AND bk.CheckoutDate
	FOR UPDATE
	DECLARE @RoomId INT
	OPEN UpdateRoomStatus
	FETCH UpdateRoomStatus INTO @RoomId
	WHILE @@FETCH_STATUS = 0 
	BEGIN
		UPDATE Room
		SET Status = 'Occupied'
		WHERE RoomID = @RoomId
		FETCH UpdateRoomStatus INTO @RoomId
	END
	CLOSE UpdateRoomStatus
	DEALLOCATE UpdateRoomStatus
END
GO
EXEC UpdateRoomStatusSP

---- Update rooms status to available to test the above SP
--UPDATE Room
--SET Status = 'Available'
--WHERE RoomID IN (
--SELECT rm.RoomID
--FROM Booking bk, Room rm
--WHERE FORMAT(GETDATE(), 'yyyy-MM-dd') BETWEEN bk.CheckinDate AND bk.CheckoutDate AND bk.RoomNumber = rm.RoomID
--)
---- List all rooms booking within today.
--SELECT bk.CheckinDate, bk.CheckoutDate, rm.RoomID, rm.Status
--FROM Booking bk, Room rm
--WHERE FORMAT(GETDATE(), 'yyyy-MM-dd') BETWEEN bk.CheckinDate AND bk.CheckoutDate AND bk.RoomNumber = rm.RoomID