CREATE PROCEDURE [dbo].[spSpells_Get]
	@Id int
AS
begin
	select [Id], [Name], [School], [Level], [CastTime], [Range], [Duration], [Concentration], [Ritual], [Description]
	from dbo.[Spells]
	where Id = @Id;
end
