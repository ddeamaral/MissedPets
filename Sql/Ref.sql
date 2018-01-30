USE MissingPets
go

--Create Schema
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'Ref')
BEGIN
EXEC('CREATE SCHEMA Ref')
END


IF OBJECT_ID('Ref.PetStatus', 'U') IS NOT NULL 
  DROP TABLE Ref.PetStatus; 


Create Table Ref.PetStatus
(
	ID int not null primary key identity(1,1),
	Value varchar(100) not null,
	ShortDescription varchar(500) null
)



IF OBJECT_ID('Ref.PetToUserRelation', 'U') IS NOT NULL 
  DROP TABLE Ref.PetToUserRelation; 


Create Table Ref.PetToUserRelation
(
	ID int not null primary key identity(1,1),
	Value varchar(100) not null,
	ShortDescription varchar(500) null
)



IF OBJECT_ID('Ref.PetAttributeValues', 'U') IS NOT NULL 
  DROP TABLE Ref.PetAttributeValues; 


Create Table Ref.PetAttributeValues
(
	ID int not null primary key identity(1,1),
	PetID int not null foreign key references PCS.Pet(ID),
	Label varchar(100) null,
	Value varchar(max) not null,
	CreatedDate datetime not null
)


IF OBJECT_ID('Ref.PetAttributeValuesDefault', 'U') IS NOT NULL 
  DROP TABLE Ref.PetAttributeValuesDefault; 


Create Table Ref.PetAttributeValuesDefault
(
	ID int not null primary key identity(1,1),
	Label varchar(100) null,
	Description varchar(max) not null,
	CreatedDate datetime not null
)