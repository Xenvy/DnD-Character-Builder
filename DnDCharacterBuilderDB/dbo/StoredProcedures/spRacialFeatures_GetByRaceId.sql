CREATE PROCEDURE [dbo].[spRacialFeatures_GetByRaceId]
	@RaceId tinyint
AS
begin
	select [Id], [Name], [RaceId], [Description], [ParentFeatureName], [SubfeatureSelections], [Tags]
	from dbo.[RacialFeatures]
	where RaceId = @RaceId;
end