USE MissingPets
go

--Create Schema
--Auth - Authentication - User
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'Auth')
BEGIN
EXEC('CREATE SCHEMA Auth')
END


IF OBJECT_ID('Auth.PetUser', 'U') IS NOT NULL 
  DROP TABLE Auth.PetUser; 


Create Table Auth.PetUser
(
	ID int not null primary key identity(1,1),
	FirstName varchar(100) not null,
	LastName varchar(100) not null,
	UserName varchar(100) null,
	Email varchar(200) null,
	Phone varchar(20) null,
	HashPassword varchar(max) null,
	Salt varchar(max) null,
	FacebookLogin bit not null,
	PetID int null,
	PetToUserRelationID int not null foreign key references Ref.PetToUserRelation(ID),
	CreatedDate datetime not null
	--Pending more fields as we add more APIs
)

IF OBJECT_ID('Auth.Logger', 'U') IS NOT NULL 
  DROP TABLE Auth.Logger; 

Create Table Auth.Logger
(
	ID int not null primary key identity(1,1),
	PetUserID int not null foreign key references Auth.PetUser(ID),
	Action varchar(100) not null,
	DateOfAction datetime not null
)
