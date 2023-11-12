CREATE TABLE [dbo].[Spells]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] VARCHAR(64) NOT NULL, 
    [School] VARCHAR(20) NOT NULL, 
    [Level] TINYINT NOT NULL, 
    [CastTime] VARCHAR(20) NOT NULL, 
    [Range] INT NOT NULL, 
    [Duration] INT NOT NULL, 
    [Concentration] BIT NOT NULL, 
    [Ritual] BIT NOT NULL, 
    [Description] VARCHAR(5000) NOT NULL
)
