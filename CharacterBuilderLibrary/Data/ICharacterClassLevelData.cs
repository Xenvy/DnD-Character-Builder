using CharacterBuilderLibrary.Models;

namespace CharacterBuilderLibrary.Data;

public interface ICharacterClassLevelData
{
    Task<CharacterClassLevel?> GetClassLevel(int id);
    Task<IEnumerable<CharacterClassLevel>> GetClassLevels();
}