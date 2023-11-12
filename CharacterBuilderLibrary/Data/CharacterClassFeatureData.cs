using CharacterBuilderLibrary.DbAccess;
using CharacterBuilderLibrary.Models;

namespace CharacterBuilderLibrary.Data;

public class CharacterClassFeatureData : ICharacterClassFeatureData
{
    private readonly ISqlDataAccess _db;

    public CharacterClassFeatureData(ISqlDataAccess db)
    {
        _db = db;
    }

    public async Task<CharacterClassFeature?> GetClassFeature(int id)
    {
		var result = await _db.LoadData<CharacterClassFeature, dynamic>("dbo.spClassFeatures_Get", new { Id = id });

		return result.FirstOrDefault();
	}

    /// <summary>
    /// A database query returning all features of a class level specified by its ID.
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public async Task<IEnumerable<CharacterClassFeature>?> GetFeaturesByClassId(int classId)
    {
        var results = await _db.LoadData<CharacterClassFeature, dynamic>("dbo.spClassFeatures_GetByClassId", new { ClassId = classId });

        return results;
    }

    public async Task<IEnumerable<CharacterClassFeature>?> GetSubfeaturesByParentFeature(string parentFeature)
    {
        var results = await _db.LoadData<CharacterClassFeature, dynamic>("dbo.spClassFeatures_GetByParentFeature", new { ParentFeatureName = parentFeature });

        return results;
    }
}
