
namespace CharacterBuilderLibrary.Models;

/// <summary>
/// Represents a race a character can belong to.
/// </summary>
public class Race
{
    /// <summary>
    /// Race ID in the database.
    /// </summary>
    public int Id { get; set; }

    /// <summary>
    /// Race name.
    /// </summary>
    public string Name { get; set; }

    /// <summary>
    /// Race's base movement speed.
    /// </summary>
    public int Speed { get; set; }

    /// <summary>
    /// Race special features.
    /// </summary>
    public List<RacialFeature> RaceFeatures { get; set; } = new();
}
