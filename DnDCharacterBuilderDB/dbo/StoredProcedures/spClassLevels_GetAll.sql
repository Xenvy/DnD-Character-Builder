CREATE PROCEDURE [dbo].[spClassLevels_GetAll]
AS
begin
	select [Id], [BaseClass], [Subclass], [Level], [HitDie], [SpellcastingAbility], [SpellcastingProgression]
	from dbo.[ClassLevels];
end
