CREATE PROCEDURE [dbo].[spRacialFeatures_GetByRaceId]
	@Id tinyint
AS
begin
	select [Id], [Name], [RaceId], [Description], [ParentFeatureName], [SubfeatureSelections], [Tags]
	from dbo.[RacialFeatures]
	where Id = @Id;
end