/*
Script to Populate the Ref Tables

2/1/2018 - Al - Created
*/

Use MissingPets
GO

--
--Ref.PetStatus Data
--

--Missing
if not exists (select * from Ref.PetStatus where Value = 'Missing')
begin

Insert into Ref.PetStatus (Value, ShortDescription)
Values ('Missing', 'The Pet is Lost/Missing')

end

--Spotted
if not exists (select * from Ref.PetStatus where Value = 'Spotted')
begin

Insert into Ref.PetStatus (Value, ShortDescription)
Values ('Spotted', 'The Pet was Spotted')

end

--Found
if not exists (select * from Ref.PetStatus where Value = 'Found')
begin

Insert into Ref.PetStatus (Value, ShortDescription)
Values ('Found', 'The Pet was Found')

end

--Reunited
if not exists (select * from Ref.PetStatus where Value = 'Reunited')
begin

Insert into Ref.PetStatus (Value, ShortDescription)
Values ('Reunited', 'The Pet was Reunited')

end

GO




--
--Ref.PetToUserRelation Data
--

--Owner
if not exists (select * from Ref.PetToUserRelation where Value = 'Owner')
begin

Insert into Ref.PetToUserRelation (Value, ShortDescription)
Values ('Owner', 'Owner of the Pet')

end

--NoRelation
if not exists (select * from Ref.PetToUserRelation where Value = 'NoRelation')
begin

Insert into Ref.PetToUserRelation (Value, ShortDescription)
Values ('NoRelation', 'There is no relation between the Pet and the User')

end

--KnowsThePet
if not exists (select * from Ref.PetToUserRelation where Value = 'KnowsThePet')
begin

Insert into Ref.PetToUserRelation (Value, ShortDescription)
Values ('KnowsThePet', 'There is a relation to the pet but the user is not the owner')

end



--
--Ref.PetAttributeType Data
--

--Color
if not exists (select * from Ref.PetAttributeType where Label = 'Color')
begin

Insert into Ref.PetAttributeType (Label, Description, CreatedDate)
Values ('Color', 'Color of the Pet', GETDATE())

end

--Size
if not exists (select * from Ref.PetAttributeType where Label = 'Size')
begin

Insert into Ref.PetAttributeType (Label, Description, CreatedDate)
Values ('Size', 'Size of the Pet', GETDATE())

end

--Breed
if not exists (select * from Ref.PetAttributeType where Label = 'Breed')
begin

Insert into Ref.PetAttributeType (Label, Description, CreatedDate)
Values ('Breed', 'Breed of the Pet', GETDATE())

end

--Other
if not exists (select * from Ref.PetAttributeType where Label = 'Other')
begin

Insert into Ref.PetAttributeType (Label, Description, CreatedDate)
Values ('Other', 'Other', GETDATE())

end


--
--Ref.PetType Data
--

--Dog
if not exists (select * from Ref.PetType where Label = 'Dog')
begin

Insert into Ref.PetType (Label, Description, CreatedDate)
Values ('Dog', 'Dog', GETDATE())

end

--Cat
if not exists (select * from Ref.PetType where Label = 'Cat')
begin

Insert into Ref.PetType (Label, Description, CreatedDate)
Values ('Cat', 'Cat', GETDATE())

end

--Hamster
if not exists (select * from Ref.PetType where Label = 'Hamster')
begin

Insert into Ref.PetType (Label, Description, CreatedDate)
Values ('Hamster', 'Hamster', GETDATE())

end

--Duck
if not exists (select * from Ref.PetType where Label = 'Duck')
begin

Insert into Ref.PetType (Label, Description, CreatedDate)
Values ('Duck', 'Duck', GETDATE())

end
