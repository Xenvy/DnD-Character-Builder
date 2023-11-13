using CharacterBuilderLibrary.DbAccess;
using CharacterBuilderLibrary.Models;

namespace CharacterBuilderLibrary.Data;

/// <summary>
/// Provides methods for accessing spell data in the database.
/// </summary>
public class SpellData : ISpellData
{
    private readonly ISqlDataAccess _db;

    public SpellData(ISqlDataAccess db)
    {
        _db = db;
    }

    /// <summary>
    /// A database query returning a single spell by its ID.
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public async Task<Spell?> GetSpell(int id)
    {
        var result = await _db.LoadData<Spell, dynamic>("dbo.spSpells_Get", new { Id = id });

        return result.FirstOrDefault();
    }

    /// <summary>
    /// A database query returning all spells of a given spellcasting group.
    /// </summary>
    /// <returns></returns>
    public async Task<IEnumerable<Spell>?> GetSpellsBySpellListAndLevel(string spellList, int spellLevel)
    {
        var results = await _db.LoadData<Spell, dynamic>("dbo.spSpells_GetByListAndLevel", new { ClassGroup = spellList, SpellLevel = spellLevel });

        return results;
    }
}
