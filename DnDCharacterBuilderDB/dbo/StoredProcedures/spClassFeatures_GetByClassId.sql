CREATE PROCEDURE [dbo].[spClassFeatures_GetByClassId]
	@ClassId smallint
AS
begin
	select [Id], [Name], [ClassLevelId], [Description], [ParentFeatureName], [SubfeatureSelections], [Tags]
	from dbo.[ClassFeatures]
	where ClassLevelId = @ClassId;
end