CREATE PROCEDURE [dbo].[spClassFeatures_GetByClassId]
	@ClassLevelId smallint
AS
begin
	select [Id], [Name], [ClassLevelId], [Description], [ParentFeatureName], [SubfeatureSelections], [Tags]
	from dbo.[ClassFeatures]
	where ClassLevelId = @ClassLevelId;
end