CREATE PROCEDURE [dbo].[spFeats_GetAll]
AS
begin
	select [Id], [Name], [Description], [Requirements], [ParentFeatName], [FeatSubselections], [CanTakeMultiple], [Tags]
	from dbo.[Feats];
end
