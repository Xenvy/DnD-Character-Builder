using CharacterBuilderLibrary.CharacterSheetLogic;
using CharacterBuilderLibrary.Data;
using System.Text;

namespace CharacterBuilderLibrary.Models;

/// <summary>
/// Represents a set of statistics and selectable features defining a character.
/// </summary>
public class CharacterSheet : ICharacterSheet
{
	public CharacterSheet()
	{
		//Create character's ability scores table
		AbilityScores = new Dictionary<Ability, AbilityScore>
		{
			{ Ability.Strength, new AbilityScore() },
			{ Ability.Dexterity , new AbilityScore() },
			{ Ability.Constitution , new AbilityScore() },
			{ Ability.Intelligence, new AbilityScore() },
			{ Ability.Wisdom , new AbilityScore() },
			{ Ability.Charisma , new AbilityScore() }
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
	public Dictionary<Ability, AbilityScore> AbilityScores { get; set; }

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
	/// Additional features gained from tags which provide conditional benefits to character's stats.
	/// </summary>
	public List<SpecialFeature> SpecialFeatures { get; set; } = new();

	/// <summary>
	/// A string uniquely identifying the current character build.
	/// </summary>
	public string? BuildReferenceId { get; set; }

	/// <summary>
	/// Updates character's hit points value based on selected class levels and additional obtained features.
	/// </summary>
	/// <returns></returns>
	public async Task UpdateHitPoints()
	{
		await Task.Run(() =>
		{
			int hitPoints = 0;
			var bonusHP = SpecialFeatures.Find(x => x.Name == "bonusHP");
			foreach (var cl in CharacterClassLevels)
			{
				hitPoints += cl.HitDie / 2 + 1 + AbilityScores[Ability.Constitution].Modifier;
				if (bonusHP != null)
				{
					hitPoints += int.Parse(bonusHP.Parameters);
				}
			}
			HitPoints = hitPoints;
		});
	}

	/// <summary>
	/// Updates character's speed value based on selected race and additional obtained features.
	/// </summary>
	/// <returns></returns>
	public async Task UpdateSpeed()
	{
		await Task.Run(() =>
		{
			int speed = 0;
			if (SpecialFeatures.Find(x => x.Name == "fastMovement") != null && EquippedArmor.ArmorGroup != "Heavy") 
			{
				speed += 10;
			}
			if (SpecialFeatures.Find(x => x.Name == "unarmoredMovement") != null && EquippedArmor.Name == null)
			{
				speed += CharacterClassLevels.FindLast(x => x.BaseClass == "Monk").Level switch
				{
					< 6 => 10,
					< 10 => 15,
					< 14 => 20,
					< 18 => 25,
					_ => 30,
				};
			}
			if(Race != null)
			{
				speed += Race.Speed;
			}
			Speed = speed;
		});
	}

	/// <summary>
	/// Updates the reference ID of the character build, storing information about all selections made by the user.
	/// </summary>
	/// <returns></returns>
	public async Task UpdateBuildRefId()
	{
		await Task.Run(() =>
		{
			var refId = new StringBuilder();
			
			if (Race != null)
			{
				refId.Append(Race.Id).Append('r');
			}
			if (Background != null) 
			{
				refId.Append(Background.Id).Append('b');
			}	
			
			foreach (var a in AbilityScores)
			{
				refId.Append(a.Value.Value - 8).Append('-');
			}
			refId.Append('a');

			if (EquippedWeapons[0].Name != null) 
			{
				refId.Append(EquippedWeapons[0].Id).Append('w');
			}

			if (EquippedWeapons[1].Name != null) 
			{
				refId.Append(EquippedWeapons[1].Id).Append('v');
			}

			if (EquippedArmor.Name != null)
			{
				refId.Append(EquippedArmor.Id).Append('m');
			}

			foreach (var cl in CharacterClassLevels)
			{
				foreach (var s in cl.SpellsLearned)
				{
					refId.Append(s.Id).Append('s');
				}
				foreach (var f in cl.ClassLevelFeatures)
				{
					if (f.SubfeatureSelections > 0)
					{
						refId.AppendJoin('-', f.SubselectionsMade).Append('-').Append(f.Id).Append('f');
					}
				}
				refId.Append(cl.Id).Append('c');
			}

			BuildReferenceId = refId.ToString();
		});
	}
}
