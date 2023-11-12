
using Microsoft.VisualBasic;

namespace CharacterBuilderLibrary.Models;

/// <summary>
/// Represents a feature of a given race.
/// </summary>
public class RacialFeature
{
    /// <summary>
    /// Feature ID in the database.
    /// </summary>
    public int Id { get; set; }

    /// <summary>
    /// ID of the race the feature belongs to.
    /// </summary>
    public int RaceId { get; set; }

    /// <summary>
    /// Racial feature name.
    /// </summary>
    public string Name { get; set; }

    /// <summary>
    /// Feature description.
    /// </summary>
    public string Description { get; set; }

    /// <summary>
    /// Additional information used to update the character's sheet (ability score increase, proficiencies, etc.).
    /// </summary>
    public string? Tags { get; set; }
}
