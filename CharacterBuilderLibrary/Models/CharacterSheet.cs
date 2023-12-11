using CharacterBuilderLibrary.CharacterSheetLogic;
using CharacterBuilderLibrary.Data;

namespace CharacterBuilderLibrary.Models;

/// <summary>
/// Represents a set of statistics and selectable features defining a character.
/// </summary>
public class CharacterSheet : ICharacterSheet
{
	private readonly ICharacterSheetData _characterSheetData;

	public CharacterSheet(ICharacterSheetData characterSheetData)
	{
		_characterSheetData = characterSheetData;
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

	/// <summary>
	/// Combines and returns all learned (from class levels) spells of a specified level.
	/// </summary>
	/// <param name="level"></param>
	/// <returns></returns>
	public List<Spell> GetAllClassSpellsByLevel(int level)
	{
		var output = new List<Spell>();

		foreach (var cl in CharacterClassLevels)
		{
			foreach (var s in cl.SpellsLearned)
			{
				if (s.Level == level)
				{
					output.Add(s);
				}
			}
		}

		return output;
	}

	/// <summary>
	/// Parses the specified tag information into adequate changes on the character sheet.
	/// </summary>
	/// <param name="tagEntry"></param>
	/// <returns></returns>
	/// <exception cref="Exception"></exception>
	public async Task ParseTag(TagEntry tagEntry)
	{
		try
		{
			switch (tagEntry.Tag)
			{
				case "spell":
					BonusSpells.Add(await _characterSheetData.GetSpell(int.Parse(tagEntry.Arguments[0])));
					break;
				case "savingThrowProficiency":
					SavingThrowProficiencies.Add(tagEntry.Arguments[0].ToAbility());
					break;
				case "weaponProficiency":
					switch(tagEntry.Arguments[0])
					{
						case "single":
							var wep = await _characterSheetData.GetWeapon(int.Parse(tagEntry.Arguments[1]));
							WeaponProficiencies.Add(wep);
							if(!DisplayedWeaponProficiencies.Contains($"{wep.Category} weapons"))
							{
								DisplayedWeaponProficiencies.Add(wep.Name);
							}
							break;
						case "simple":
							var w = await _characterSheetData.GetWeapons();
							WeaponProficiencies.AddRange(w.Where(x => x.Category == "Simple"));
							if (!DisplayedWeaponProficiencies.Contains("Simple weapons"))
							{
								DisplayedWeaponProficiencies.Add("Simple weapons");
							}
							break;
						case "martial":
							w = await _characterSheetData.GetWeapons();
							WeaponProficiencies.AddRange(w.Where(x => x.Category == "Martial"));
							if (!DisplayedWeaponProficiencies.Contains("Martial weapons"))
							{
								DisplayedWeaponProficiencies.Add("Martial weapons");
							}
							break;
						case "all":
							WeaponProficiencies.AddRange(await _characterSheetData.GetWeapons());
							DisplayedWeaponProficiencies.Clear();
							DisplayedWeaponProficiencies.Add("Simple weapons");
							DisplayedWeaponProficiencies.Add("Martial weapons");
							DisplayedWeaponProficiencies.Add("Shield");
							break;
						default:
							break;
					}
					break;
				case "armorProficiency":
					break;
				case "abilityImprovement":
					AbilityScores.Find(x => x.Ability == tagEntry.Arguments[0].ToAbility()).Value += int.Parse(tagEntry.Arguments[1]);
					break;
				case "buffer":
					break;
				case "extraAttack":
					break;
				case "damageResistance":
					break;
				case "unarmoredDefense":
					break;
				case "fastMovement":
					break;
				case "jackOfAllTrades":
					break;
				case "archeryStyle":
					break;
				case "defenseStyle":
					break;
				case "duelingStyle":
					break;
				case "twoWeaponFightingStyle":
					break;
				case "remarkableAthlete":
					break;
				case "martialArts":
					break;
				case "unarmoredMovement":
					break;
				case "dreadAmbusher":
					break;
				case "umbralSight":
					break;
				case "ironMind":
					break;
				case "bonusHP":
					break;
				case "draconicResilience":
					break;
				case "expandedSpellList":
					break;
				default:
					break;
			}
		}
		catch (Exception e)
		{
			throw new Exception(e.Message);
		}
	}
}
