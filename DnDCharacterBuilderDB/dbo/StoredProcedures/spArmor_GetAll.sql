CREATE PROCEDURE [dbo].[spArmor_GetAll]
AS
begin
	select [Id], [Name], [ArmorClass], [ArmorGroup], [StrengthRequirement], [StealthDisadvantage]
	from dbo.[Armor];
end
