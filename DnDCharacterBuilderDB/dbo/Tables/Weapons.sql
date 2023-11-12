CREATE TABLE [dbo].[Weapons]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] VARCHAR(30) NOT NULL, 
    [Category] VARCHAR(10) NOT NULL, 
    [Range] VARCHAR(10) NOT NULL, 
    [Damage] VARCHAR(6) NOT NULL, 
    [DamageType] VARCHAR(16) NOT NULL, 
    [TwoHanded] BIT NOT NULL,
    [Tags] VARCHAR(200) NULL
)
