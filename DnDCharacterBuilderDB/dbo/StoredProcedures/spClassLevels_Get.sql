CREATE PROCEDURE [dbo].[spClassLevels_Get]
	@Id int
AS
begin
	select [Id], [BaseClass], [Subclass], [Level], [HitDie], [SpellcastingAbility], [SpellcastingProgression]
	from dbo.[ClassLevels]
	where Id = @Id;
end
