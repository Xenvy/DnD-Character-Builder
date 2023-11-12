
namespace CharacterBuilderLibrary.Models;

/// <summary>
/// Represents a profession or lifestyle background a character has.
/// </summary>
public class Background
{
    /// <summary>
    /// Background ID in the database.
    /// </summary>
    public int Id { get; set; }

    /// <summary>
    /// Background name.
    /// </summary>
    public string Name { get; set; }

    /// <summary>
    /// ID of the first skill proficiency gained with the background.
    /// </summary>
    public int Skill1Id { get; set; }

    /// <summary>
    /// ID of the second skill proficiency gained with the background.
    /// </summary>
    public int Skill2Id { get; set; }
}
