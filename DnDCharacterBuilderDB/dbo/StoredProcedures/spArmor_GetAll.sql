CREATE PROCEDURE [dbo].[spArmor_GetAll]
AS
begin
	select [Id], [Name], [ArmorClass], [Type], [StrengthRequirement], [StealthDisadvantage]
	from dbo.[Armor];
end
