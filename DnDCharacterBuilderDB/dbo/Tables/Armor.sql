CREATE TABLE [dbo].[Armor]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] VARCHAR(30) NOT NULL, 
    [ArmorClass] TINYINT NOT NULL, 
    [Type] VARCHAR(10) NOT NULL, 
    [StrengthRequirement] TINYINT NULL, 
    [StealthDisadvantage] BIT NOT NULL
)
