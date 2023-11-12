using CharacterBuilderLibrary.DbAccess;
using CharacterBuilderLibrary.Models;

namespace CharacterBuilderLibrary.Data;

public class FeatData : IFeatData
{
    private readonly ISqlDataAccess _db;

    public FeatData(ISqlDataAccess db)
    {
        _db = db;
    }

    /// <summary>
    /// A query returning all feats present in the database.
    /// </summary>
    /// <returns></returns>
    public async Task<IEnumerable<Feat>> GetFeats() => await _db.LoadData<Feat, dynamic>("dbo.spFeats_GetAll", new { });

    /// <summary>
    /// A database query returning a single feat by its ID.
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public async Task<Feat?> GetFeat(int id)
    {
        var result = await _db.LoadData<Feat, dynamic>("dbo.spFeats_Get", new { Id = id });

        return result.FirstOrDefault();
    }

	public async Task<IEnumerable<Feat>?> GetSubfeatByParentFeat(string parentFeat)
	{
		var results = await _db.LoadData<Feat, dynamic>("dbo.spFeats_GetByParentFeat", new { ParentFeatName = parentFeat });

        return results;
	}
}
