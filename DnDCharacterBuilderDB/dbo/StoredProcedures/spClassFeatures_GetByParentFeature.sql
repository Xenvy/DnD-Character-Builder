CREATE PROCEDURE [dbo].[spClassFeatures_GetByParentFeature]
	@ParentFeatureName varchar(80)
AS
begin
	select [Id], [Name], [ClassLevelId], [Description], [ParentFeatureName], [SubfeatureSelections], [Tags]
	from dbo.[ClassFeatures]
	where ParentFeatureName = @ParentFeatureName;
end