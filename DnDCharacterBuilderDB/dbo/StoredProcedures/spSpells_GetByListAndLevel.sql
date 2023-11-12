CREATE PROCEDURE [dbo].[spSpells_GetByListAndLevel]
	@ClassGroup varchar(20), @SpellLevel tinyint
AS
begin
	select [Id], [Name], [School], [Level], [CastTime], [Range], [Duration], [Concentration], [Ritual], [Description]
	from dbo.[ClassSpells] inner join dbo.[Spells] on ClassSpells.SpellId = Spells.Id
	where ClassSpells.ClassGroup = @ClassGroup and Spells.[Level] <= @SpellLevel;
end
