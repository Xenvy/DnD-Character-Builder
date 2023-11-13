using CharacterBuilderLibrary.DbAccess;
using CharacterBuilderLibrary.Models;

namespace CharacterBuilderLibrary.Data;

/// <summary>
/// Provides methods for accessing race data in the database.
/// </summary>
public class RaceData : IRaceData
{
    private readonly ISqlDataAccess _db;

    public RaceData(ISqlDataAccess db)
    {
        _db = db;
    }

    /// <summary>
    /// A query returning all races present in the database.
    /// </summary>
    /// <returns></returns>
    public async Task<IEnumerable<Race>> GetRaces() => await _db.LoadData<Race, dynamic>("dbo.spRaces_GetAll", new { });

    /// <summary>
    /// A database query returning a single race by its ID.
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public async Task<Race?> GetRace(int id)
    {
        var result = await _db.LoadData<Race, dynamic>("dbo.spRaces_Get", new { Id = id });

        return result.FirstOrDefault();
    }
}
