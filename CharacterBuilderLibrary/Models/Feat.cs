
namespace CharacterBuilderLibrary.Models;

/// <summary>
/// Represents a feat a character can learn.
/// </summary>
public class Feat
{
    /// <summary>
    /// Feat ID in the database.
    /// </summary>
    public int Id { get; set; }

    /// <summary>
    /// Feat name.
    /// </summary>
    public string Name { get; set; }

    /// <summary>
    /// Feat description.
    /// </summary>
    public string Description { get; set; }

    /// <summary>
    /// Feat ability score requirements.
    /// </summary>
    public string Requirements { get; set; }
}
