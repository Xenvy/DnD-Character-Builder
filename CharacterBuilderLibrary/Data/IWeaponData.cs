using CharacterBuilderLibrary.Models;

namespace CharacterBuilderLibrary.Data;

public interface IWeaponData
{
    Task<Weapon?> GetWeapon(int id);
    Task<IEnumerable<Weapon>> GetWeapons();
}