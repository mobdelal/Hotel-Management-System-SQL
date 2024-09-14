-----Hotel-----
-----insert----
CREATE OR ALTER PROC InsertIntoHotel @HotelId INT ,@NameOfHotel VARCHAR(20),@AddressOfHotel VARCHAR(20),@phone VARCHAR(20),@email VARCHAR(20),@stars INT
AS
BEGIN
	INSERT INTO Hotel(HotelID,HotelName,HotelAdress,Phone,	Email,Stars)
	VALUES (@HotelId,@NameOfHotel,@AddressOfHotel,@phone,@email,@stars)
END
GO
InsertIntoHotel 27,'Elmassa','654Cairo','0246547665','elmassa-cairo.com',5
GO
SELECT * FROM Hotel
GO
-------update--------
CREATE OR ALTER PROC UpdateHotel @HotelId INT ,@NameOfHotel VARCHAR(20),@AddressOfHotel VARCHAR(20),@phone VARCHAR(20),@email VARCHAR(20),@stars INT
AS
BEGIN
	UPDATE Hotel
	SET 
	HotelName=@NameOfHotel,
	HotelAdress=@AddressOfHotel,
	Phone=@phone,
	Email=@email,
	Stars=@stars
	WHERE HotelID=@HotelId
END
GO
UpdateHotel 27,'elmassaa','Alex','0283776378','AlexElmassaa.com',4
GO
SELECT * FROM Hotel
GO
----------Delete--------------
CREATE OR ALTER TRIGGER DelteFromHotel1
ON Hotel
INSTEAD OF DELETE
AS SELECT 'You Cannot Delete This Hotel' AS [Error Message]
GO
CREATE OR ALTER PROC DeleteHotelSP @HotelId INT
WITH ENCRYPTION
AS
BEGIN
	DELETE FROM Hotel WHERE HotelID = @HotelId
END
GO
EXEC DeleteHotelSP 27
GO
SELECT * FROM Hotel
GO
--disable trigger DelteFromHotel1 on Hotel
--enable trigger DelteFromHotel1 on Hotel

---------staff-------
---------Insert-------
CREATE OR ALTER PROC InsertIntoStaff @StaffId INT,@HotelId INT ,@FName VARCHAR(20),@Lname VARCHAR(20),@DB DATE ,@position VARCHAR(20),@salary DECIMAL(10,2),@Hdate DATE,@phone VARCHAR(20)
AS
BEGIN
	INSERT INTO Staff(StaffID,HotelID,FirstName,LastName,DateOfBirth,Position,Salary,HireDate,Phone)
	VALUES (@StaffId,@HotelId,@FName,@Lname,@DB,@position,@salary,@Hdate,@phone)
END
GO
InsertIntoStaff 33,12,'Mohammed','Ahmed','1969-05-15','Reseptionest',5000.99,'1999-01-01','01153467821'
GO
SELECT * FROM Staff
GO
---------Update-------
CREATE OR ALTER PROC UpdateStaff @StaffId INT ,@FName VARCHAR(20),@Lname VARCHAR(20),@DB DATE ,@position VARCHAR(20),@salary DECIMAL(10,2),@Hdate DATE,@phone VARCHAR(20)
AS
BEGIN
	UPDATE Staff
	SET 
	FirstName=@FName,
	LastName=@Lname,
	DateOfBirth=@DB,
	Position=@position,
	Salary=@salary,
	HireDate=@Hdate,
	Phone=@phone
	WHERE StaffID=@StaffId
END
GO
UpdateStaff 30,'Amr','Ossama','1989-05-15','HousKeeping',6000.99,'2000-01-01','01153877821'
GO
SELECT * FROM Staff
GO
---------Delete-------
CREATE OR ALTER PROC DelteFromStaff @Id INT
AS
BEGIN
	DELETE FROM Staff WHERE StaffID=@Id
END
GO
DelteFromStaff 33
GO
SELECT * FROM Staff
GO