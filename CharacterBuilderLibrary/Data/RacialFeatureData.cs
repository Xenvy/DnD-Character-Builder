using CharacterBuilderLibrary.DbAccess;
using CharacterBuilderLibrary.Models;

namespace CharacterBuilderLibrary.Data;

/// <summary>
/// Provides methods for accessing racial feature data in the database.
/// </summary>
public class RacialFeatureData : IRacialFeatureData
{
    private readonly ISqlDataAccess _db;

    public RacialFeatureData(ISqlDataAccess db)
    {
        _db = db;
    }

    /// <summary>
    /// A database query returning all features of a race specified by its ID.
    /// </summary>
    /// <returns></returns>
    public async Task<IEnumerable<RacialFeature>?> GetFeaturesByRaceId(int raceId)
    {
        var results = await _db.LoadData<RacialFeature, dynamic>("dbo.spRacialFeatures_GetByRaceId", new { RaceId = raceId });

        return results;
    }

	public async Task<IEnumerable<RacialFeature>?> GetSubfeaturesByParentFeature(string parentFeature)
	{
		var results = await _db.LoadData<RacialFeature, dynamic>("dbo.spRacialFeatures_GetByParentFeature", new { ParentFeatureName = parentFeature });

		return results;
	}
}
