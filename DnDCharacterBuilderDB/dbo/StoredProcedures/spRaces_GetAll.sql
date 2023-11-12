CREATE PROCEDURE [dbo].[spRaces_GetAll]
AS
begin
	select [Id], [Name], [Speed], [Size]
	from dbo.[Races];
end
