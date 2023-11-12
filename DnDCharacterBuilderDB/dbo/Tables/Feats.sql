CREATE TABLE [dbo].[Feats]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] VARCHAR(80) NOT NULL, 
    [Description] VARCHAR(5000) NULL, 
    [Requirements] VARCHAR(64) NULL, 
    [ParentFeatName] VARCHAR(80) NULL, 
    [FeatSubselections] TINYINT NULL, 
    [CanTakeMultiple] BIT NOT NULL, 
    [Tags] VARCHAR(200) NULL
)
