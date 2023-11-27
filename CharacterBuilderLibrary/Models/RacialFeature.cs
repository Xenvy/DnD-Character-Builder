﻿
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
	/// Parent feature, if applicable (ex. Breath Weapon - Draconic Ancestry).
	/// </summary>
	public string? ParentFeatureName { get; set; }

	/// <summary>
	/// Number of subfeature selections available, if any. -1 means there are pre-set, non-selectable subfeatures.
	/// </summary>
	public int SubfeatureSelections { get; set; }

	/// <summary>
	/// Additional information used to update the character's sheet (ability score increase, proficiencies, etc.).
	/// </summary>
	public string? Tags { get; set; }
}
