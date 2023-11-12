CREATE PROCEDURE [dbo].[spWeapons_Get]
	@Id int
AS
begin
	select [Id], [Name], [Category], [Range], [Damage], [DamageType], [TwoHanded], [Tags]
	from dbo.[Weapons]
	where Id = @Id;
end