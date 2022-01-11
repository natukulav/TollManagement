-- Creating table Persondetails with two columns Personid, PersonName
CREATE TABLE PersonDetails(PersonId int, PersonName Varchar(100))

-- To check table details
sp_help PersonDetails


--Add new column HomeTowncnt to PersonDetails table
ALTER TABLE PersonDetails
ADD  HomeTowncnt varchar(100)


-- By mistake we gave HomeTowncnt, we gave varchar but it actually int. So, now we are changing HomeTowncnt data type from varchar to int
ALTER TABLE PersonDetails
ALTER COLUMN HomeTowncnt int

-- AS per client requirement, need to remove  HomeTowncnt column
ALTER TABLE PersonDetails
DROP COLUMN HomeTowncnt 


-- AS per client Requirement, need to change column name from  PersonName to PName
EXEC sp_rename 'PersonDetails.PersonName', 'PName'


-- As per client requirement, changing TableName from   PersonDetails to PDetails

EXEC SP_RENAME 'PersonDetails', 'PDetails'

select * from PDetails


-- Need to Delete PersonDetails table from database
DROP TABLE PDetails

