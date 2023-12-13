using CharacterBuilderLibrary.CharacterSheetLogic;
using CharacterBuilderLibrary.Data;

namespace CharacterBuilderLibrary.Models;

/// <summary>
/// Represents a set of statistics and selectable features defining a character.
/// </summary>
public class CharacterSheet : ICharacterSheet
{
	public CharacterSheet()
	{
		//Create character's ability scores table
		AbilityScores = new List<AbilityScore>
		{
			{ new AbilityScore(Ability.Strength) },
			{ new AbilityScore(Ability.Dexterity) },
			{ new AbilityScore(Ability.Constitution) },
			{ new AbilityScore(Ability.Intelligence) },
			{ new AbilityScore(Ability.Wisdom) },
			{ new AbilityScore(Ability.Charisma) }
		};
	}

	/// <summary>
	/// A list of all taken class levels.
	/// </summary>
	public List<CharacterClassLevel> CharacterClassLevels { get; set; } = new List<CharacterClassLevel>();

	/// <summary>
	/// Character's overall level.
	/// </summary>
	public int CharacterLevel { get { return CharacterClassLevels.Count; } }

	/// <summary>
	/// Character's current proficiency bonus.
	/// </summary>
	public int ProficiencyBonus
	{
		get
		{
			return CharacterLevel switch
			{
				< 5 => 2,
				< 9 => 3,
				< 13 => 4,
				< 17 => 5,
				_ => 6,
			};
		}
	}

	/// <summary>
	/// Character's maximum hit points.
	/// </summary>
	public int HitPoints { get; set; }

	/// <summary>
	/// Character's movement speed in feet.
	/// </summary>
	public int Speed { get; set; }

	/// <summary>
	/// Character's selected race.
	/// </summary>
	public Race? Race { get; set; }

	/// <summary>
	/// Character's selected background.
	/// </summary>
	public Background? Background { get; set; }

	/// <summary>
	/// A table of character's ability scores.
	/// </summary>
	public List<AbilityScore> AbilityScores { get; set; }

	/// <summary>
	/// A list of character's saving throw proficiencies.
	/// </summary>
	public List<Ability> SavingThrowProficiencies { get; set; } = new List<Ability>();

	/// <summary>
	/// A list of character's selected and obtained skill proficiencies.
	/// </summary>
	public List<Skill> SkillProficiencies { get; set; } = new List<Skill>();

	/// <summary>
	/// A list of character's weapon proficiencies.
	/// </summary>
	public List<Weapon> WeaponProficiencies { get; set; } = new List<Weapon>();

	/// <summary>
	/// A list of character's weapon proficiencies to display, bundling all simple weapons as 'Simple', etc.
	/// </summary>
	public List<string> DisplayedWeaponProficiencies { get; set; } = new List<string>();

	/// <summary>
	/// A list of character's armor proficiencies.
	/// </summary>
	public List<string> ArmorProficiencies { get; set; } = new List<string>();

	/// <summary>
	/// A list of character's selected feats.
	/// </summary>
	public List<Feat> Feats { get; set; } = new List<Feat>();

	/// <summary>
	/// A list of character's known spells.
	/// </summary>
	public List<Spell> SpellsKnown { get; set; } = new List<Spell>();

	/// <summary>
	/// A list of character's currently equipped weapon(s).
	/// </summary>
	public List<Weapon> EquippedWeapons { get; set; } = new List<Weapon> { new Weapon(), new Weapon() };

	/// <summary>
	/// Character's currently equipped armor.
	/// </summary>
	public Armor EquippedArmor { get; set; } = new();

	/// <summary>
	/// Points used to buy ability score increases.
	/// </summary>
	public int AbilityScorePoints { get; set; } = 27;

	/// <summary>
	/// Bonus spells gained from class level or race features.
	/// </summary>
	public List<Spell> BonusSpells { get; set; } = new();

	/// <summary>
	/// Skills in which character has expertise in (doubled proficiency bonus).
	/// </summary>
	public List<Skill> SkillExpertise { get; set; } = new();

}
