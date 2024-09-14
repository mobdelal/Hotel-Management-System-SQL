-----Payment-----
-- you can not insert or update or delete in rows from payment untel do this query in booking frist
--- we create this stored proc to  used in booking only 
------------------insert----------
create or alter proc InsertIntoPayment @PaymentId int ,@BookingId int, @Amount decimal(10, 2),@PaymentDate date, @PaymentMethode varchar(50)
as
	begin
	insert into Payment
	values (@PaymentId, @BookingId, @Amount, @PaymentDate, @PaymentMethode)
	end


InsertIntoPayment 999, 7, 10000.99, '2024-06-05', 'cash'

select * from Payment

-------------------------
----------------------------------UPDATE----------------------
create or alter proc UpdatePayment @PaymentId int , @Amount decimal(10, 2),@PaymentDate date, @PaymentMethode varchar(50)
as
	begin
	Update Payment
	set 
	Amount=@Amount,
	PaymentDate=@PaymentDate,
	PaymentMethod=@PaymentMethode
	where PaymentID=@PaymentId
	end

UpdatePayment 999 ,1253.50,'2024-05-05','Credit Card'
select * from Payment

-------------------------------
----------------------DELETE------------------
create or alter proc DelteFromPayment @Id int
as
	begin
	delete from Payment Where PaymentID=@Id
	end

DelteFromPayment 999

select * from Payment

