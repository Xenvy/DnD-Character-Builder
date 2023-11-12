CREATE PROCEDURE [dbo].[spArmor_Get]
	@Id int
AS
begin
	select [Id], [Name], [ArmorClass], [Type], [StrengthRequirement], [StealthDisadvantage]
	from dbo.[Armor]
	where Id = @Id;
end