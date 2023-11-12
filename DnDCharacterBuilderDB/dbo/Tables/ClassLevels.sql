CREATE TABLE [dbo].[ClassLevels]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [BaseClass] VARCHAR(20) NOT NULL, 
    [Subclass] VARCHAR(50) NULL, 
    [Level] TINYINT NOT NULL, 
    [HitDie] TINYINT NOT NULL, 
    [SpellcastingAbility] VARCHAR(16) NULL, 
    [SpellcastingProgression] TINYINT NULL
)
