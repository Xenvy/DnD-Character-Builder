CREATE PROCEDURE [dbo].[spBackgrounds_Get]
	@Id int
AS
begin
	select [Id], [Name], [Skill1Id], [Skill2Id]
	from dbo.[Backgrounds]
	where Id = @Id;
end
