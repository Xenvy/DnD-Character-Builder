CREATE PROCEDURE [dbo].[spBackgrounds_GetAll]
AS
begin
	select [Id], [Name], [Skill1Id], [Skill2Id]
	from dbo.[Backgrounds];
end
