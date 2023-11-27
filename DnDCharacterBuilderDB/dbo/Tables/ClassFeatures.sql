CREATE TABLE [dbo].[ClassFeatures]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] VARCHAR(80) NOT NULL, 
    [ClassLevelId] SMALLINT NULL, 
    [Description] VARCHAR(4000) NULL, 
    [ParentFeatureName] VARCHAR(80) NULL, 
    [SubfeatureSelections] SMALLINT NULL, 
    [Tags] VARCHAR(200) NULL
)
