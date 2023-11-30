using CharacterBuilderLibrary.Models;

namespace CharacterBuilderLibrary.Data;

public interface ISpellData
{
    Task<Spell?> GetSpell(int id);
	Task<IEnumerable<Spell>?> GetSpellsBySpellLevel(int spellLevel);
	Task<IEnumerable<Spell>?> GetSpellsBySpellListAndLevel(string spellList, int spellLevel);
}