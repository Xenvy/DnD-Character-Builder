using CharacterBuilderLibrary.DbAccess;
using CharacterBuilderLibrary.Models;

namespace CharacterBuilderLibrary.Data;

public class WeaponData : IWeaponData
{
    private readonly ISqlDataAccess _db;

    public WeaponData(ISqlDataAccess db)
    {
        _db = db;
    }

    /// <summary>
    /// A query returning all weapons present in the database.
    /// </summary>
    /// <returns></returns>
    public async Task<IEnumerable<Weapon>> GetWeapons() => await _db.LoadData<Weapon, dynamic>("dbo.spWeapons_GetAll", new { });

    /// <summary>
    /// A database query returning a single weapon by its ID.
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public async Task<Weapon?> GetWeapon(int id)
    {
        var result = await _db.LoadData<Weapon, dynamic>("dbo.spWeapons_Get", new { Id = id });

        return result.FirstOrDefault();
    }
}
