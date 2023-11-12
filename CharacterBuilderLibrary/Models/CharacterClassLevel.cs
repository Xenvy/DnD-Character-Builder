namespace CharacterBuilderLibrary.Models;

/// <summary>
/// Represents a single level of a particular character class or subclass.
/// </summary>
public class CharacterClassLevel
{
	//public override bool Equals(object? obj)
	//{
	//	if ((obj == null) || !this.GetType().Equals(obj.GetType()))
	//	{
	//		return false;
	//	}
 //       else
 //       {
 //           CharacterClassLevel cl = (CharacterClassLevel)obj;
 //           return cl.Id == this.Id;
 //       }
	//}

	/// <summary>
	/// Class/subclass level ID in the database.
	/// </summary>
	public int Id { get; set; }

    /// <summary>
    /// Class/subclass name.
    /// </summary>
    public string BaseClass { get; set; }

    /// <summary>
    /// Class group of the class/subclass (ex. Ranger -> Ranger, Hunter -> also Ranger).
    /// </summary>
    public string? Subclass { get; set; }

    /// <summary>
    /// Class/subclass level.
    /// </summary>
    public int Level { get; set; }

    /// <summary>
    /// Class/subclass hit points gain with level.
    /// </summary>
    public int HitDie { get; set; }

    /// <summary>
    /// Class/subclass level features.
    /// </summary>
    public List<CharacterClassFeature> ClassLevelFeatures { get; set; } = new List<CharacterClassFeature>();

    /// <summary>
    /// Class/subclass ability score used for spellcasting, if applicable.
    /// </summary>
    public Ability? SpellcastingAbilityScore { get; set; }

    /// <summary>
    /// Class/subclass spell list type, if applicable.
    /// </summary>
    public string? SpellList { get; set; }

    /// <summary>
    /// Class/subclass spellcasting progression type (full, 1/2, 1/3), if applicable.
    /// </summary>
    public int? SpellcastingProgression { get; set; }

    /// <summary>
    /// Class/subclass spells learned at this level.
    /// </summary>
    public List<Spell>? SpellsLearned { get; set; }

    /// <summary>
    /// Additional information used to update the character's sheet (ex. saving throw proficiencies).
    /// </summary>
    public string? Tags { get; set; }

}
