CREATE PROCEDURE [dbo].[spSpells_GetByLevel]
	@SpellLevel tinyint
AS
begin
	select [Id], [Name], [School], [Level], [CastTime], [Range], [Duration], [Concentration], [Ritual], [Description]
	from dbo.[Spells]
	where Spells.[Level] <= @SpellLevel;
end
