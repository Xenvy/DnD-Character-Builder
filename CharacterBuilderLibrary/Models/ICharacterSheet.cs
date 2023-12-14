
namespace CharacterBuilderLibrary.Models
{
	public interface ICharacterSheet
	{
		int AbilityScorePoints { get; set; }
		List<AbilityScore> AbilityScores { get; set; }
		List<string> ArmorProficiencies { get; set; }
		Background? Background { get; set; }
		List<Spell> BonusSpells { get; set; }
		List<CharacterClassLevel> CharacterClassLevels { get; set; }
		int CharacterLevel { get; }
		int HitPoints { get; set; }
		int Speed { get; set; }
		Armor EquippedArmor { get; set; }
		List<Weapon> EquippedWeapons { get; set; }
		List<Feat> Feats { get; set; }
		int ProficiencyBonus { get; }
		Race? Race { get; set; }
		List<Ability> SavingThrowProficiencies { get; set; }
		List<Skill> SkillExpertise { get; set; }
		List<Skill> SkillProficiencies { get; set; }
		List<Spell> SpellsKnown { get; set; }
		List<Weapon> WeaponProficiencies { get; set; }
		List<string> DisplayedWeaponProficiencies { get; set; }
		List<SpecialFeature> SpecialFeatures { get; set; }
	}
}