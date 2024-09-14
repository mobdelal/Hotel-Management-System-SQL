
								----views-------
---GuestView-----

create or alter view GuestView(ID,FirstName,Addess) with encryption as
select g.GuestID, G.FirstName, g.Adress
from Guest g

select * from GuestView

-----BookingView----
create or alter view BookingView(Rnumber,Total_price) with encryption
as
select b.RoomNumber,sum(b.TotalPrice)
from Booking b
group by b.RoomNumber

select * from BookingView

-----Hotel-----

create or alter view HotelView(NameOfHotel,AddressOfHotel,HotelEmail) with encryption as
select h.HotelName,h.HotelAdress,h.Email
from Hotel h

select * from HotelView

-----payment----

create or alter view PaymentView(moneyAmount,MethodOfPayment) with encryption
as
select p.Amount,p.PaymentMethod
from Payment p

select * from PaymentView

-----RoomAndRoomType----

create or alter view RoomAndRoomType(RoomName,RoomDescription,Price,CapicityOfRoom) with encryption
as
select rt.Name,rt.Description,rt.PricePerNight,rt.Capactiy
from RoomType rt left join Room r
on rt.TypeID=r.TypeID

select * from RoomAndRoomType

------StaffAndHotel----

create or alter view StaffAndHotel(Hotel_Name,Stars,StaffName,StaffPosition,StaffSalary) with encryption
as
select h.HotelName,h.Stars,s.FirstName,s.Position,s.Salary
from Hotel h,Staff s
where h.HotelID=s.HotelID

select * from StaffAndHotel
