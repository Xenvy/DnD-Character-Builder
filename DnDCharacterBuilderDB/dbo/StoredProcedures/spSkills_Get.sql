CREATE PROCEDURE [dbo].[spSkills_Get]
	@Id int
AS
begin
	select [Id], [Name], [AssociatedAbilityScore]
	from dbo.[Skills]
	where Id = @Id;
end
