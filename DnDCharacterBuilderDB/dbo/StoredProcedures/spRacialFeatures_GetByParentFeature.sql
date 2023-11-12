CREATE PROCEDURE [dbo].[spRacialFeatures_GetByParentFeature]
	@ParentFeatureName varchar(80)
AS
begin
	select [Id], [Name], [RaceId], [Description], [ParentFeatureName], [SubfeatureSelections], [Tags]
	from dbo.[RacialFeatures]
	where ParentFeatureName = @ParentFeatureName;
end