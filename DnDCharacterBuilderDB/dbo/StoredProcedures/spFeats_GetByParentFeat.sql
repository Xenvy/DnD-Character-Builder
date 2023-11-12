CREATE PROCEDURE [dbo].[spFeats_GetByParentFeat]
	@ParentFeatName varchar(80)
AS
begin
	select [Id], [Name], [Description], [Requirements], [ParentFeatName], [FeatSubselections], [CanTakeMultiple], [Tags]
	from dbo.[Feats]
	where ParentFeatName = @ParentFeatName;
end
