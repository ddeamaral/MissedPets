USE MissingPets
go

--Create Schema
--PCSN - Pet Control System Notification
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'PCSN')
BEGIN
EXEC('CREATE SCHEMA PCSN')
END


IF OBJECT_ID('PCSN.Notifications', 'U') IS NOT NULL 
  DROP TABLE PCSN.Notifications; 


Create Table PCSN.Notifications
(
	ID int not null primary key identity(1,1),
	PetUserID int not null foreign key references Auth.PetUser(ID),
	PetID int not null foreign key references PCS.Pet(ID),
	NotificationMessage varchar(max) null,
	CreatedDate datetime not null
)





