
namespace CharacterBuilderLibrary.Models;

/// <summary>
/// Represents a spell a character can learn.
/// </summary>
public class Spell
{
    /// <summary>
    /// Spell ID in the database.
    /// </summary>
    public int Id { get; set; }

    /// <summary>
    /// Spell name.
    /// </summary>
    public string Name { get; set; }

    /// <summary>
    /// Spell description.
    /// </summary>
    public string Description { get; set; }

    /// <summary>
    /// Spell level.
    /// </summary>
    public int Level { get; set; }

    /// <summary>
    /// Spellcasting school the spell belongs to.
    /// </summary>
    public string School { get; set; }

    /// <summary>
    /// Spell duration.
    /// </summary>
    public string Duration { get; set; }

    /// <summary>
    /// Notes whether the spell requires concentration or not.
    /// </summary>
    public bool RequiresConcentration { get; set; }
}
