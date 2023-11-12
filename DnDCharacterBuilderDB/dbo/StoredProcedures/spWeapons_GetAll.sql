CREATE PROCEDURE [dbo].[spWeapons_GetAll]
AS
begin
	select [Id], [Name], [Category], [Range], [Damage], [DamageType], [TwoHanded], [Tags]
	from dbo.[Weapons];
end