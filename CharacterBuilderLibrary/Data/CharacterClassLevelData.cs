using CharacterBuilderLibrary.DbAccess;
using CharacterBuilderLibrary.Models;

namespace CharacterBuilderLibrary.Data;

/// <summary>
/// Provides methods for accessing class level data in the database.
/// </summary>
public class CharacterClassLevelData : ICharacterClassLevelData
{
    private readonly ISqlDataAccess _db;

    public CharacterClassLevelData(ISqlDataAccess db)
    {
        _db = db;
    }

    /// <summary>
    /// A query returning all class levels present in the database.
    /// </summary>
    /// <returns></returns>
    public async Task<IEnumerable<CharacterClassLevel>> GetClassLevels() => await _db.LoadData<CharacterClassLevel, dynamic>("dbo.spClassLevels_GetAll", new { });

    /// <summary>
    /// A database query returning a single class level by its ID.
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public async Task<CharacterClassLevel?> GetClassLevel(int id)
    {
        var result = await _db.LoadData<CharacterClassLevel, dynamic>("dbo.spClassLevels_Get", new { Id = id });

        return result.FirstOrDefault();
    }

}
