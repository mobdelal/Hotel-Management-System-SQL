USE OnlineBookingManagementSystem
GO
--------------------INSERT Hotel Data-------------------- 

INSERT INTO Hotel (HotelID,HotelName,HotelAdress,Phone,Email,Stars)
VALUES
(1,'Helton','1115NileCorniche,Sharkas,Boulaq,Cairo','0225777444','Helton_Ramses@gmail.com',4),
(2,'Pyramids Resort','12411Cairo-AlexandriaDesertRoad','0238388300','pyramidsparkresort.com',4),
(3,'Solymar Ivory Suites','ElKawsar,RedSeaGovernorate','0653462610','Solymar-Ivory-Suites.com',4),
(4,'Sheraton Cairo Hotel','CharlesdeGaulle,Dokki,Giza','0233369800','Sheraton-Cairo.com',5),
(5,'Sharm Dreams','AlSalam,Sharm El Sheikh, South Sinai Governorate','0693603040','Sharm-Dreams.com',5),
(6,'Four Seasons Nile Plaza Cairo','1089CORNICHE-ELNIL, Cairo','0227917000','Four-Seasons.com',5),
(7, 'Sunshine Hotel', '123 Sunny St, Beach City', '1234567890', 'contact1@sunshinehotel.com', 5),
(8, 'Mountain Inn', '456 Mountain Rd, Hill Town', '2345678901', 'info2@mountaininn.com', 4),
(9, 'Ocean View', '789 Ocean Blvd, Seaside', '3456789012', 'contact3@oceanview.com', 5),
(10, 'City Center Hotel', '101 Main St, Metropolis', '4567890123', 'info4@citycenter.com', 3),
(11, 'Lakefront Resort', '202 Lakeside Dr, Lakeville', '5678901234', 'contact5@lakefrontresort.com', 4),
(12, 'Desert Oasis', '303 Desert Rd, Oasis Town', '6789012345', 'info6@desertoasis.com', 5),
(13, 'Forest Retreat', '404 Forest Ln, Woodland', '7890123456', 'contact7@forestretreat.com', 4),
(14, 'Island Escape', '505 Island Blvd, Tropic Isle', '8901234567', 'info8@islandescape.com', 5),
(15, 'Riverbank Inn', '606 River Rd, Rivertown', '9012345678', 'contact9@riverbankinn.com', 3),
(16, 'Country Lodge', '707 Country St, Countryside', '0123456789', 'info10@countrylodge.com', 4),
(17, 'Mountain View Hotel', '808 Hilltop Rd, Mountain City', '1234567890', 'contact11@mountainview.com', 5),
(18, 'Seaside Inn', '909 Beach Ave, Beach City', '2345678901', 'info12@seasideinn.com', 4),
(19, 'Urban Suites', '1010 Metro St, Urban Center', '3456789012', 'contact13@urbansuites.com', 5),
(20, 'Valley Resort', '1111 Valley Rd, Valley Town', '4567890123', 'info14@valleyresort.com', 3),
(21, 'Highland Hotel', '1212 Highland Ave, Highland City', '5678901234', 'contact15@highlandhotel.com', 4),
(22, 'Cliffside Inn', '1313 Cliff St, Cliffside', '6789012345', 'info16@cliffsideinn.com', 5),
(23, 'Garden Hotel', '1414 Garden St, Floral Town', '7890123456', 'contact17@gardenhotel.com', 4),
(24, 'Winter Wonderland', '1515 Snowy Rd, Snowville', '8901234567', 'info18@winterwonderland.com', 5),
(25, 'Hillside Inn', '1616 Hill St, Hillytown', '9012345678', 'contact19@hillsideinn.com', 3),
(26, 'Cosmopolitan Hotel', '1717 City Rd, Big City', '0123456789', 'info20@cosmopolitan.com', 4)
GO
--SELECT * FROM Hotel
--GO
--------------------INSERT Roomtype Data-------------------- 
INSERT INTO RoomType
VALUES (1, 'Single', 'A single room with one bed', 50.00, 1),
(2, 'Double', 'A double room with two beds', 75.00, 2),
(3, 'Suite', 'A suite with a living area', 150.00, 4),
(4, 'Deluxe', 'A deluxe room with luxury amenities', 200.00, 3),
(5, 'Family', 'A family room with multiple beds', 125.00, 5),
(6, 'Executive', 'An executive room for business travelers', 175.00, 2),
(7, 'Presidential', 'A presidential suite with premium features', 300.00, 6),
(8, 'Studio', 'A studio room with kitchenette', 90.00, 2),
(9, 'Penthouse', 'A penthouse suite with a view', 400.00, 4),
(10, 'Accessible', 'An accessible room for guests with disabilities', 70.00, 2)
GO
--SELECT * FROM RoomType
--GO
--------------------INSERT Room Data-------------------- 
INSERT INTO Room
VALUES
(1, 1, 1, 'Available'),(2, 1, 2, 'Available'),(3, 1, 3, 'Occupied'),(4, 1, 4, 'Available'),(5, 1, 5, 'Maintenance'),(6, 1, 6, 'Available'),
(7, 2, 1, 'Occupied'),(8, 2, 2, 'Available'),(9, 2, 3, 'Available'),(10, 2, 4, 'Available'),(11, 2, 5, 'Occupied'),(12, 2, 6, 'Maintenance'),
(13, 3, 1, 'Available'),(14, 3, 2, 'Occupied'),(15, 3, 3, 'Available'),(16, 3, 4, 'Available'),(17, 3, 5, 'Maintenance'),(18, 3, 6, 'Available'),
(19, 4, 1, 'Occupied'),(20, 4, 2, 'Available'),(21, 4, 3, 'Available'),(22, 4, 4, 'Occupied'),(23, 4, 5, 'Available'),(24, 4, 6, 'Maintenance'),
(25, 5, 1, 'Available'),(26, 5, 2, 'Occupied'),(27, 5, 3, 'Maintenance'),(28, 5, 4, 'Available'),(29, 5, 5, 'Available'),(30, 5, 6, 'Occupied'),
(31, 6, 1, 'Available'),(32, 6, 2, 'Occupied'),(33, 6, 3, 'Available'),(34, 6, 4, 'Available'),(35, 6, 5, 'Maintenance'),(36, 6, 6, 'Occupied'),
(37, 7, 1, 'Available'),(38, 7, 2, 'Occupied'),(39, 7, 3, 'Available'),(40, 7, 4, 'Occupied'),(41, 7, 5, 'Available'),(42, 7, 6, 'Maintenance'),
(43, 8, 1, 'Available'),(44, 8, 2, 'Occupied'),(45, 8, 3, 'Available'),(46, 8, 4, 'Available'),(47, 8, 5, 'Maintenance'),(48, 8, 6, 'Available'),
(49, 9, 1, 'Occupied'),(50, 9, 2, 'Available'),(51, 9, 3, 'Available'),(52, 9, 4, 'Available'),(53, 9, 5, 'Maintenance'),(54, 9, 6, 'Occupied'),
(55, 11, 1, 'Available'),(56, 11, 2, 'Occupied'),(57, 11, 3, 'Maintenance'),(58, 11, 4, 'Available'),(59, 11, 5, 'Available'),(60, 11, 6, 'Occupied')
GO
INSERT INTO Room
VALUES
(61,10,1,'Available'),(62,10,2,'Available'),(63,10,3,'Available'),(64,10,4,'Available'),(65,10,5,'Available'),(66,10,6,'Maintenance'),
(67,12,1,'Available'),(68,12,2,'Available'),(69,12,3,'Available'),(70,12,4,'Available'),(71,12,5,'Available'),(72,12,6,'Maintenance'),
(73,13,1,'Available'),(74,13,2,'Available'),(75,13,3,'Available'),(76,13,4,'Available'),(77,13,5,'Available'),(78,13,6,'Maintenance'),
(79,14,1,'Available'),(80,14,2,'Available'),(81,14,3,'Available'),(82,14,4,'Available'),(83,14,5,'Available'),(84,14,6,'Maintenance'),
(85,15,1,'Available'),(86,15,2,'Available'),(87,15,3,'Available'),(88,15,4,'Available'),(89,15,5,'Available'),(90,15,6,'Maintenance'),
(91,16,1,'Available'),(92,16,2,'Available'),(93,16,3,'Available'),(94,16,4,'Available'),(95,16,5,'Available'),(96,16,6,'Maintenance'),
(97,17,1,'Available'),(98,17,2,'Available'),(99,17,3,'Available'),(100,17,4,'Available'),(101,17,5,'Available'),(102,17,6,'Maintenance'),
(103,18,1,'Available'),(104,18,2,'Available'),(105,18,3,'Available'),(106,18,4,'Available'),(107,18,5,'Available'),(108,18,6,'Maintenance'),
(109,19,1,'Available'),(110,19,2,'Available'),(111,19,3,'Available'),(112,19,4,'Available'),(113,19,5,'Available'),(114,19,6,'Maintenance'),
(115,20,1,'Available'),(116,20,2,'Available'),(117,20,3,'Available'),(118,20,4,'Available'),(119,20,5,'Available'),(120,20,6,'Maintenance'),
(121,21,1,'Available'),(122,21,2,'Available'),(123,21,3,'Available'),(124,21,4,'Available'),(125,21,5,'Available'),(126,21,6,'Maintenance'),
(127,22,1,'Available'),(128,22,2,'Available'),(129,22,3,'Available'),(130,22,4,'Available'),(131,22,5,'Available'),(132,22,6,'Maintenance'),
(133,23,1,'Available'),(134,23,2,'Available'),(135,23,3,'Available'),(136,23,4,'Available'),(137,23,5,'Available'),(138,23,6,'Maintenance'),
(139,24,1,'Available'),(140,24,2,'Available'),(141,24,3,'Available'),(142,24,4,'Available'),(143,24,5,'Available'),(144,24,6,'Maintenance'),
(145,25,1,'Available'),(146,25,2,'Available'),(147,25,3,'Available'),(148,25,4,'Available'),(149,25,5,'Available'),(150,25,6,'Maintenance'),
(151,26,1,'Available'),(152,26,2,'Available'),(153,26,3,'Available'),(154,26,4,'Available'),(155,26,5,'Available'),(156,26,6,'Maintenance');
GO
--SELECT * FROM Room
--GO
--------------------INSERT Staff Data-------------------- 
SET DATEFORMAT dmy
INSERT INTO Staff
VALUES 
(1,1,'Mahmod','Ali','1969-05-15','Manger',15000.00,'1999-01-01','01025364912'),
(2,1,'Ahmed','Osman','1988-08-14','Reseptionest',5000.00,'2018-07-01','01115142625'),
(3,1,'Maher','Ala','1995-09-24','Housekeeping',3000.00,'2020-07-01','01117958269'),
(4,2,'Mohamed','Farag','1969-05-15','Manger',25000.00,'1999-01-01','01025364912'),
(5,2,'Ahmed','Osman','1988-08-04','Reseptionest',5000.00,'2018-07-01','01115142625'),
(6,2,'Maher','Ala','1995-09-24','Housekeeping',3000.00,'2020-07-01','01117958269'),
(7,3,'Mona','Mahmoud','1969-05-15','Manger',15000.00,'1999-01-01','01025364912'),
(8,3,'Ahmed','Osman','1988-08-04','Reseptionest',5000.00,'2018-07-01','01115142625'),
(9,3,'Maher','Ala','1995-09-24','Housekeeping',3000.00,'2020-07-01','01117958269'),
(10,4,'Omer','Agamy','1967-05-08','Manger',20000.00,'1996-07-01','01025369871'),
(11,4,'Scarlett','Johansson','1988-11-22','Reseptionest',7000.00,'2015-12-01','01245789632'),
(12,4,'Selena','Gomez','1998-07-22','Housekeeping',3000.00,'2020-08-01','01236598475'),
(13, 1, 'John', 'Doe', '1980-01-15', 'Manager', 50000, '2010-06-01', '3216540987'),
(14, 1, 'Jane', 'Smith', '1985-02-20', 'Receptionist', 30000, '2015-08-15', '4327651098'),
(15, 2, 'Mike', 'Johnson', '1990-05-10', 'Chef', 40000, '2018-01-10', '5438762109'),
(16, 2, 'Emily', 'Davis', '1992-03-25', 'Housekeeper', 25000, '2019-02-12', '6549873210'),
(17, 3, 'Chris', 'Brown', '1987-09-15', 'Security', 35000, '2014-07-20', '7650984321'),
(18, 3, 'Anna', 'Wilson', '1995-11-30', 'Waiter', 28000, '2020-11-22', '8765432109'),
(19, 4, 'David', 'Moore', '1988-04-10', 'Bellboy', 22000, '2016-04-18', '9876543210'),
(20, 4, 'Sophia', 'Taylor', '1991-08-05', 'Concierge', 32000, '2017-09-11', '0987654321'),
(21, 5, 'James', 'Anderson', '1983-12-01', 'Bartender', 27000, '2012-12-01', '1098765432'),
(22, 5, 'Olivia', 'Thomas', '1989-07-20', 'Receptionist', 30000, '2013-01-15', '2109876543'),
(23, 6, 'Lucas', 'Jackson', '1984-11-05', 'Manager', 50000, '2010-06-01', '3216540987'),
(24, 6, 'Ava', 'White', '1993-06-10', 'Housekeeper', 25000, '2019-02-12', '6549873210'),
(25, 7, 'Liam', 'Harris', '1986-03-25', 'Chef', 40000, '2018-01-10', '5438762109'),
(26, 7, 'Mia', 'Martin', '1992-10-15', 'Receptionist', 30000, '2015-08-15', '4327651098'),
(27, 8, 'Noah', 'Lee', '1990-01-20', 'Security', 35000, '2014-07-20', '7650984321'),
(28, 8, 'Isabella', 'Perez', '1987-05-30', 'Waiter', 28000, '2020-11-22', '8765432109'),
(29, 9, 'William', 'Thompson', '1982-08-15', 'Bellboy', 22000, '2016-04-18', '9876543210'),
(30, 9, 'Amelia', 'Garcia', '1991-12-05', 'Concierge', 32000, '2017-09-11', '0987654321'),
(31, 11, 'Benjamin', 'Martinez', '1985-02-10', 'Bartender', 27000, '2012-12-01', '1098765432'),
(32, 11, 'Charlotte', 'Rodriguez', '1988-11-20', 'Receptionist', 30000, '2013-01-15', '2109876543');
GO
--SELECT * FROM Staff
--GO
--------------------INSERT Guest Data-------------------- 
SET DATEFORMAT dmy
INSERT INTO Guest
VALUES
(1,'Essam','Hesham','1998-07-07','Sohag','01553647892','Esamasd@gmail.com','essam#1478'),
(2,'Adham','Mahmod','1995-10-10','Cairo','01193572684','Adham123@gmail.com','adham$1122'),
(3,'Yousef','Ahmed','1989-6-15','Alex','01036548975','Yousef@gmail.com','yousef$123'),
(4,'Zead','Bakry','2000-01-01','Naser City','01036552989','Zead@gmail.com','zead@14256'),
(5, 'John', 'Doe', '1985-01-01', '123 Main St', '1234567890', 'john.doe@example.com', 'password1'),
(6, 'Jane', 'Smith', '1990-02-02', '456 Elm St', '2345678901', 'jane.smith@example.com', 'password2'),
(7, 'Bob', 'Johnson', '1982-03-03', '789 Oak St', '3456789012', 'bob.johnson@example.com', 'password3'),
(8, 'Alice', 'Williams', '1975-04-04', '321 Pine St', '4567890123', 'alice.williams@example.com', 'password4'),
(9, 'Charlie', 'Brown', '1995-05-05', '654 Maple St', '5678901234', 'charlie.brown@example.com', 'password5'),
(10, 'David', 'Jones', '1988-06-06', '987 Birch St', '6789012345', 'david.jones@example.com', 'password6'),
(11, 'Emily', 'Davis', '1992-07-07', '741 Cedar St', '7890123456', 'emily.davis@example.com', 'password7'),
(12, 'Frank', 'Miller', '1981-08-08', '852 Spruce St', '8901234567', 'frank.miller@example.com', 'password8'),
(13, 'Grace', 'Wilson', '1993-09-09', '963 Fir St', '9012345678', 'grace.wilson@example.com', 'password9'),
(14, 'Henry', 'Moore', '1987-10-10', '159 Redwood St', '0123456789', 'henry.moore@example.com', 'password10'),
(15, 'Ivy', 'Taylor', '1991-11-11', '753 Aspen St', '1234567890', 'ivy.taylor@example.com', 'password11'),
(16, 'Jack', 'Anderson', '1986-12-12', '456 Willow St', '2345678901', 'jack.anderson@example.com', 'password12'),
(17, 'Kara', 'Thomas', '1994-01-13', '789 Sycamore St', '3456789012', 'kara.thomas@example.com', 'password13'),
(18, 'Leo', 'Jackson', '1980-02-14', '321 Cypress St', '4567890123', 'leo.jackson@example.com', 'password14'),
(19, 'Mia', 'White', '1996-03-15', '654 Dogwood St', '5678901234', 'mia.white@example.com', 'password15'),
(20, 'Nina', 'Harris', '1989-04-16', '987 Magnolia St', '6789012345', 'nina.harris@example.com', 'password16'),
(21, 'Oscar', 'Martin', '1990-05-17', '741 Beech St', '7890123456', 'oscar.martin@example.com', 'password17'),
(22, 'Paula', 'Lee', '1984-06-18', '852 Hemlock St', '8901234567', 'paula.lee@example.com', 'password18'),
(23, 'Quincy', 'Perez', '1997-07-19', '963 Hickory St', '9012345678', 'quincy.perez@example.com', 'password19'),
(24, 'Rachel', 'Young', '1991-08-20', '159 Walnut St', '0123456789', 'rachel.young@example.com', 'password20')
GO
--SELECT * FROM Guest
--GO
--------------------INSERT Booking Data-------------------- 
SET DATEFORMAT dmy
INSERT INTO Booking
VALUES
(1,1,1,'2024-06-25','2024-06-30',
((SELECT DATEDIFF(DAY,'2024-06-25','2024-07-29'))*(SELECT PricePerNight FROM RoomType,Room WHERE RoomType.TypeID=Room.TypeID AND Room.RoomID=1))),
(2,1,2,'2024-07-01','2024-07-10',
((SELECT DATEDIFF(DAY,'2024-07-19','2024-07-26'))*(SELECT PricePerNight FROM RoomType,Room WHERE RoomType.TypeID=Room.TypeID AND Room.RoomID=2))),
(3,2,3,'2024-06-27','2024-08-13',
((SELECT DATEDIFF(DAY,'2024-06-27','2024-06-30'))*(SELECT PricePerNight FROM RoomType,Room WHERE RoomType.TypeID=Room.TypeID AND Room.RoomID=3))),
(4,2,4,'2024-07-12','2024-07-20',
((SELECT DATEDIFF(DAY,'2024-07-12','2024-07-20'))*(SELECT PricePerNight FROM RoomType,Room WHERE RoomType.TypeID=Room.TypeID AND Room.RoomID=4))),
(5,3,5,'2024-07-19','2024-07-30',
((SELECT DATEDIFF(DAY,'2024-07-19','2024-07-30'))*(SELECT PricePerNight FROM RoomType,Room WHERE RoomType.TypeID=Room.TypeID AND Room.RoomID=5))),
(6,3,6,'2024-08-01','2024-08-20',
((SELECT DATEDIFF(DAY,'2024-08-01','2024-08-20'))*(SELECT PricePerNight FROM RoomType,Room WHERE RoomType.TypeID=Room.TypeID AND Room.RoomID=6))),
(7, 1, 1, '2024-05-01', '2024-05-15',
(DATEDIFF(DAY, '2024-05-01', '2024-05-15') * (SELECT PricePerNight FROM RoomType,Room WHERE RoomType.TypeID=Room.TypeID AND Room.RoomID=1))),
(8, 2, 2, '2024-06-02', '2024-06-06',
(DATEDIFF(DAY, '2024-06-02', '2024-06-06') * (SELECT PricePerNight FROM RoomType,Room WHERE RoomType.TypeID=Room.TypeID AND Room.RoomID=2))),
(9, 3, 3, '2024-06-03', '2024-06-07',
(DATEDIFF(DAY, '2024-06-03', '2024-06-07') * (SELECT PricePerNight FROM RoomType,Room WHERE RoomType.TypeID=Room.TypeID AND Room.RoomID=3))),
(10, 4, 4, '2024-06-04', '2024-06-08',
(DATEDIFF(DAY, '2024-06-04', '2024-06-08') * (SELECT PricePerNight FROM RoomType,Room WHERE RoomType.TypeID=Room.TypeID AND Room.RoomID=4))),
(11, 5, 5, '2024-06-05', '2024-06-09',
(DATEDIFF(DAY, '2024-06-05', '2024-06-09') * (SELECT PricePerNight FROM RoomType,Room WHERE RoomType.TypeID=Room.TypeID AND Room.RoomID=5))),
(12, 6, 6, '2024-06-06', '2024-06-10',
(DATEDIFF(DAY, '2024-06-06', '2024-06-10') * (SELECT PricePerNight FROM RoomType,Room WHERE RoomType.TypeID=Room.TypeID AND Room.RoomID=6))),
(13, 7, 7, '2024-06-07', '2024-06-11', 
(DATEDIFF(DAY, '2024-06-07', '2024-06-11') * (SELECT PricePerNight FROM RoomType,Room WHERE RoomType.TypeID=Room.TypeID AND Room.RoomID=7))),
(14, 8, 8, '2024-06-08', '2024-06-12',
(DATEDIFF(DAY, '2024-06-08', '2024-06-12') * (SELECT PricePerNight FROM RoomType,Room WHERE RoomType.TypeID=Room.TypeID AND Room.RoomID=8))),
(15, 9, 9, '2024-06-09', '2024-06-13',
(DATEDIFF(DAY, '2024-06-09', '2024-06-13') * (SELECT PricePerNight FROM RoomType,Room WHERE RoomType.TypeID=Room.TypeID AND Room.RoomID=9))),
(16, 10, 10, '2024-06-10', '2024-06-14',
(DATEDIFF(DAY, '2024-06-10', '2024-06-14') * (SELECT PricePerNight FROM RoomType,Room WHERE RoomType.TypeID=Room.TypeID AND Room.RoomID=10))),
(17, 11, 11, '2024-06-11', '2024-06-15',
(DATEDIFF(DAY, '2024-06-11', '2024-06-17') * (SELECT PricePerNight FROM RoomType,Room WHERE RoomType.TypeID=Room.TypeID AND Room.RoomID=11))),
(18, 12, 12, '2024-06-12', '2024-06-16',
(DATEDIFF(DAY, '2024-06-12', '2024-06-16') * (SELECT PricePerNight FROM RoomType,Room WHERE RoomType.TypeID=Room.TypeID AND Room.RoomID=12))),
(19, 13, 13, '2024-06-13', '2024-06-17',
(DATEDIFF(DAY, '2024-06-13', '2024-06-17') * (SELECT PricePerNight FROM RoomType,Room WHERE RoomType.TypeID=Room.TypeID AND Room.RoomID=13))),
(20, 14, 14, '2024-06-14', '2024-06-18',
(DATEDIFF(DAY, '2024-06-14', '2024-06-18') * (SELECT PricePerNight FROM RoomType,Room WHERE RoomType.TypeID=Room.TypeID AND Room.RoomID=14))),
(21, 15, 15, '2024-06-15', '2024-06-19',
(DATEDIFF(DAY, '2024-06-15', '2024-06-19') * (SELECT PricePerNight FROM RoomType,Room WHERE RoomType.TypeID=Room.TypeID AND Room.RoomID=15))),
(22, 16, 16, '2024-06-16', '2024-06-20',
(DATEDIFF(DAY, '2024-06-16', '2024-06-20') * (SELECT PricePerNight FROM RoomType,Room WHERE RoomType.TypeID=Room.TypeID AND Room.RoomID=16))),
(23, 17, 17, '2024-06-17', '2024-06-21',
(DATEDIFF(DAY, '2024-06-17', '2024-06-21') * (SELECT PricePerNight FROM RoomType,Room WHERE RoomType.TypeID=Room.TypeID AND Room.RoomID=17))),
(24, 18, 18, '2024-06-18', '2024-06-22',
(DATEDIFF(DAY, '2024-06-18', '2024-06-22') * (SELECT PricePerNight FROM RoomType,Room WHERE RoomType.TypeID=Room.TypeID AND Room.RoomID=18))),
(25, 19, 19, '2024-06-19', '2024-06-23',
(DATEDIFF(DAY, '2024-06-19', '2024-06-23') * (SELECT PricePerNight FROM RoomType,Room WHERE RoomType.TypeID=Room.TypeID AND Room.RoomID=19))),
(26, 20, 20, '2024-06-20', '2024-06-24',
(DATEDIFF(DAY, '2024-06-20', '2024-06-24') * (SELECT PricePerNight FROM RoomType,Room WHERE RoomType.TypeID=Room.TypeID AND Room.RoomID=20)))
GO
--SELECT * FROM Booking
--GO
--------------------INSERT Payment Data-------------------- 
SET DATEFORMAT dmy
INSERT INTO Payment VALUES
(1,1,(SELECT Booking.TotalPrice FROM Booking WHERE Booking.BookingID=1),
(SELECT Booking.CheckoutDate FROM Booking WHERE Booking.BookingID=1),'Cash'),
(2,2,(SELECT Booking.TotalPrice FROM Booking WHERE Booking.BookingID=2),
(SELECT Booking.CheckoutDate FROM Booking WHERE Booking.BookingID=2),'credit card'),
(3,3,(SELECT Booking.TotalPrice FROM Booking WHERE Booking.BookingID=3),
(SELECT Booking.CheckoutDate FROM Booking WHERE Booking.BookingID=3),'credit card'),
(4,4,(SELECT Booking.TotalPrice FROM Booking WHERE Booking.BookingID=4),
(SELECT Booking.CheckoutDate FROM Booking WHERE Booking.BookingID=4),'Cash'),
(5,5,(SELECT Booking.TotalPrice FROM Booking WHERE Booking.BookingID=5),
(SELECT Booking.CheckoutDate FROM Booking WHERE Booking.BookingID=5),'credit card'),
(6,6,(SELECT Booking.TotalPrice FROM Booking WHERE Booking.BookingID=6),
(SELECT Booking.CheckoutDate FROM Booking WHERE Booking.BookingID=6),'credit card'),
(7, 7, (SELECT TotalPrice FROM Booking WHERE BookingID = 7), (SELECT CheckoutDate FROM Booking WHERE BookingID = 7), 'Credit Card'),
(8, 8, (SELECT TotalPrice FROM Booking WHERE BookingID = 8), (SELECT CheckoutDate FROM Booking WHERE BookingID = 8), 'Cash'),
(9, 9, (SELECT TotalPrice FROM Booking WHERE BookingID = 9), (SELECT CheckoutDate FROM Booking WHERE BookingID = 9), 'Credit Card'),
(10, 10, (SELECT TotalPrice FROM Booking WHERE BookingID = 10), (SELECT CheckoutDate FROM Booking WHERE BookingID = 10), 'Credit Card'),
(11, 11, (SELECT TotalPrice FROM Booking WHERE BookingID = 11), (SELECT CheckoutDate FROM Booking WHERE BookingID = 11), 'Cash'),
(12, 12, (SELECT TotalPrice FROM Booking WHERE BookingID = 12), (SELECT CheckoutDate FROM Booking WHERE BookingID = 12), 'Credit Card'),
(13, 13, (SELECT TotalPrice FROM Booking WHERE BookingID = 13), (SELECT CheckoutDate FROM Booking WHERE BookingID = 13), 'Credit Card'),
(14, 14, (SELECT TotalPrice FROM Booking WHERE BookingID = 14), (SELECT CheckoutDate FROM Booking WHERE BookingID = 14), 'Cash'),
(15, 15, (SELECT TotalPrice FROM Booking WHERE BookingID = 15), (SELECT CheckoutDate FROM Booking WHERE BookingID = 15), 'Credit Card'),
(16, 16, (SELECT TotalPrice FROM Booking WHERE BookingID = 16), (SELECT CheckoutDate FROM Booking WHERE BookingID = 16), 'Credit Card'),
(17, 17, (SELECT TotalPrice FROM Booking WHERE BookingID = 17), (SELECT CheckoutDate FROM Booking WHERE BookingID = 17), 'Cash'),
(18, 18, (SELECT TotalPrice FROM Booking WHERE BookingID = 18), (SELECT CheckoutDate FROM Booking WHERE BookingID = 18), 'Credit Card'),
(19, 19, (SELECT TotalPrice FROM Booking WHERE BookingID = 19), (SELECT CheckoutDate FROM Booking WHERE BookingID = 19), 'Credit Card'),
(20, 20, (SELECT TotalPrice FROM Booking WHERE BookingID = 20), (SELECT CheckoutDate FROM Booking WHERE BookingID = 20), 'Cash'),
(21, 21, (SELECT TotalPrice FROM Booking WHERE BookingID = 21), (SELECT CheckoutDate FROM Booking WHERE BookingID = 21), 'Credit Card'),
(22, 22, (SELECT TotalPrice FROM Booking WHERE BookingID = 22), (SELECT CheckoutDate FROM Booking WHERE BookingID = 22), 'Credit Card'),
(23, 23, (SELECT TotalPrice FROM Booking WHERE BookingID = 23), (SELECT CheckoutDate FROM Booking WHERE BookingID = 23), 'Cash'),
(24, 24, (SELECT TotalPrice FROM Booking WHERE BookingID = 24), (SELECT CheckoutDate FROM Booking WHERE BookingID = 24), 'Credit Card'),
(25, 25, (SELECT TotalPrice FROM Booking WHERE BookingID = 25), (SELECT CheckoutDate FROM Booking WHERE BookingID = 25), 'Credit Card'),
(26, 26, (SELECT TotalPrice FROM Booking WHERE BookingID = 26), (SELECT CheckoutDate FROM Booking WHERE BookingID = 26), 'Credit Card')
GO
--SELECT * FROM Payment