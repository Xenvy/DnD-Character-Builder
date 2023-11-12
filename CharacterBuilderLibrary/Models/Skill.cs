namespace CharacterBuilderLibrary.Models;

/// <summary>
/// Represents a skill a character can use.
/// </summary>
public class Skill
{
    /// <summary>
    /// Skill ID in the database.
    /// </summary>
    public int Id { get; set; }

    /// <summary>
    /// Skill name.
    /// </summary>
    public string Name { get; set; }

    /// <summary>
    /// The ability score used with the skill's checks.
    /// </summary>
    public Ability AssociatedAbilityScore { get; set; }
}
