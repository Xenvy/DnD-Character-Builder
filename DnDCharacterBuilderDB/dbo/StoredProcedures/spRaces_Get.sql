CREATE PROCEDURE [dbo].[spRaces_Get]
	@Id int
AS
begin
	select [Id], [Name], [Speed], [Size]
	from dbo.[Races]
	where Id = @Id;
end
