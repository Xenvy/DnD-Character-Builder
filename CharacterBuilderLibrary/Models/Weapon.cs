
namespace CharacterBuilderLibrary.Models;

/// <summary>
/// Represents a weapon a character can wield.
/// </summary>
public class Weapon
{
    /// <summary>
    /// Weapon ID in the database.
    /// </summary>
    public int Id { get; set; }

    /// <summary>
    /// Weapon name.
    /// </summary>
    public string Name { get; set; }

    /// <summary>
    /// Weapon damage.
    /// </summary>
    public string Damage { get; set; }

    /// <summary>
    /// Proficiency group the weapon belongs to.
    /// </summary>
    public string Category { get; set; }

    /// <summary>
    /// Indicates if the weapon is two-handed or not.
    /// </summary>
    public bool TwoHanded { get; set; }

    /// <summary>
    /// Additional information about weapon's special properties (ex. Finesse).
    /// </summary>
    public string? Tags { get; set; }
}
