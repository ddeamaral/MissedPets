USE MissingPets
go

--Create Schema
--PCS - Pet Control System
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'PCS')
BEGIN
EXEC('CREATE SCHEMA PCS')
END


IF OBJECT_ID('PCS.Pet', 'U') IS NOT NULL 
  DROP TABLE PCS.Pet; 


Create Table PCS.Pet
(
	ID int not null primary key identity(1,1),
	Name varchar(100) not null,
	Breed varchar(200),
	YearsOld int,	
	PetTypeID int not null foreign key references Ref.PetType(ID),
	Description varchar(max) null,
	CreatedDate datetime not null,
)


IF OBJECT_ID('PCS.PetDetail', 'U') IS NOT NULL 
  DROP TABLE PCS.PetDetail; 


Create Table PCS.PetDetail
(
	ID int not null primary key identity(1,1),
	PetStatus int not null foreign key references Ref.PetStatus(ID),
	PetID int not null foreign key references PCS.Pet(ID),
	Latitude decimal(10, 6) null,
	Longitude decimal(10, 6) null,
	Note varchar(maX) null,
	CreatedDate datetime not null,
	EndDate datetime null
)



