CREATE PROCEDURE [dbo].[spSkills_GetAll]
AS
begin
	select [Id], [Name], [AssociatedAbilityScore]
	from dbo.[Skills];
end
