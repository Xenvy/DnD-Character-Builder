
namespace CharacterBuilderLibrary.Models;

/// <summary>
/// Represents an armor a character can wear.
/// </summary>
public class Armor
{
    /// <summary>
    /// Armor ID in the database.
    /// </summary>
    public int Id { get; set; }

    /// <summary>
    /// Armor name.
    /// </summary>
    public string Name { get; set; }

    /// <summary>
    /// Armor Class provided by the armor.
    /// </summary>
    public int ArmorClass { get; set; }

    /// <summary>
    /// Armor's maximum allowed Dexterity bonus.
    /// </summary>
    public int MaxDexBonus { get { return ArmorGroup == "Light" ? 16 : ArmorGroup == "Medium" ? 2 : 0; } }

    /// <summary>
    /// Armor's Strength requirement.
    /// </summary>
    public int StrRequirement { get; set; }

    /// <summary>
    /// Proficiency group the armor belongs to.
    /// </summary>
    public string ArmorGroup { get; set; }
}
