
namespace CharacterBuilderLibrary.Models;

/// <summary>
/// Represents a character class or subclass feature.
/// </summary>
public class CharacterClassFeature
{
    /// <summary>
    /// Feature ID in the database.
    /// </summary>
    public int Id { get; set; }

    /// <summary>
    /// ID of the class/subclass the feature belongs to.
    /// </summary>
    public int ClassLevelId { get; set; }

    /// <summary>
    /// Feature name.
    /// </summary>
    public string Name { get; set; }

    /// <summary>
    /// Feature description.
    /// </summary>
    public string Description { get; set; }

    /// <summary>
    /// Parent feature, if applicable (ex. Riposte - Battle Master Maneuver).
    /// </summary>
    public string? ParentFeatureName { get; set; }

    /// <summary>
    /// Number of subfeature selections available, if any. -1 means there are pre-set, non-selectable subfeatures.
    /// </summary>
    public int SubfeatureSelections { get; set; }

    /// <summary>
    /// Additional information used to update the character's sheet (extra attack, proficiencies, etc.).
    /// </summary>
    public string? Tags { get; set; }

}
