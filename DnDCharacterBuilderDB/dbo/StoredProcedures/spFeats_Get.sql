CREATE PROCEDURE [dbo].[spFeats_Get]
	@Id int
AS
begin
	select [Id], [Name], [Description], [Requirements], [ParentFeatName], [FeatSubselections], [CanTakeMultiple], [Tags]
	from dbo.[Feats]
	where Id = @Id;
end
