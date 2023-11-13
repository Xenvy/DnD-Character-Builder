using CharacterBuilderLibrary.DbAccess;
using CharacterBuilderLibrary.Models;

namespace CharacterBuilderLibrary.Data;

/// <summary>
/// Provides methods for accessing background data in the database.
/// </summary>
public class BackgroundData : IBackgroundData
{
    private readonly ISqlDataAccess _db;

    public BackgroundData(ISqlDataAccess db)
    {
        _db = db;
    }

    /// <summary>
    /// A query returning all backgrounds present in the database.
    /// </summary>
    /// <returns></returns>
    public async Task<IEnumerable<Background>> GetBackgrounds() => await _db.LoadData<Background, dynamic>("dbo.spBackgrounds_GetAll", new { });

    /// <summary>
    /// A database query returning a single background by its ID.
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public async Task<Background?> GetBackground(int id)
    {
        var result = await _db.LoadData<Background, dynamic>("dbo.spBackgrounds_Get", new { Id = id });

        return result.FirstOrDefault();
    }
}
