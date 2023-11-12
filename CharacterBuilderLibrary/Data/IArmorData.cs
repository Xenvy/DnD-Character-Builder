using CharacterBuilderLibrary.Models;

namespace CharacterBuilderLibrary.Data;

public interface IArmorData
{
    Task<Armor?> GetArmor(int id);
    Task<IEnumerable<Armor>> GetArmors();
}