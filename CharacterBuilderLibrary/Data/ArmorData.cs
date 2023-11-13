using CharacterBuilderLibrary.DbAccess;
using CharacterBuilderLibrary.Models;

namespace CharacterBuilderLibrary.Data;

/// <summary>
/// Provides methods for accessing armor data in the database.
/// </summary>
public class ArmorData : IArmorData
{
    private readonly ISqlDataAccess _db;

    public ArmorData(ISqlDataAccess db)
    {
        _db = db;
    }

    /// <summary>
    /// A query returning all armors present in the database.
    /// </summary>
    /// <returns></returns>
    public async Task<IEnumerable<Armor>> GetArmors() => await _db.LoadData<Armor, dynamic>("dbo.spArmor_GetAll", new { });

    /// <summary>
    /// A database query returning a single armor by its ID.
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public async Task<Armor?> GetArmor(int id)
    {
        var result = await _db.LoadData<Armor, dynamic>("dbo.spArmor_Get", new { Id = id });

        return result.FirstOrDefault();
    }
}
