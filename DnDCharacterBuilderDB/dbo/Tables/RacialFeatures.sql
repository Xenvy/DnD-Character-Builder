CREATE TABLE [dbo].[RacialFeatures]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] VARCHAR(80) NOT NULL, 
    [RaceId] TINYINT NULL, 
    [Description] VARCHAR(5000) NULL, 
    [ParentFeatureName] VARCHAR(80) NULL, 
    [SubfeatureSelections] SMALLINT NULL, 
    [Tags] VARCHAR(200) NULL
)
