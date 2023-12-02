using CharacterBuilderLibrary.Models;

namespace CharacterBuilderLibrary.Data
{
	public interface ICharacterSheetData
	{
		Task<Armor> GetArmor(int armorId);
		Task<List<Armor>> GetArmors();
		Task<List<CharacterClassLevel>> GetClassLevels();
		Task<List<Feat>> GetAvailableFeats();
		Task<List<Spell>> GetAllSpellsByLevel(CharacterClassLevel characterClassLevel);
		Task<List<Spell>> GetSpellsByListAndLevel(string spellGroup, int spellLevel);
		Task<Background> GetBackground(int backgroundId);
		Task<List<Background>> GetBackgrounds();
		Task<CharacterClassLevel> GetClassLevel(int classLevelId);
		Task<CharacterClassFeature> GetClassLevelFeature(int classFeatureId);
		Task<List<CharacterClassFeature>> GetClassLevelFeatures(CharacterClassLevel characterClassLevel);
		Task<List<CharacterClassFeature>> GetLevelFeatureSubfeatures(CharacterClassFeature parentFeature);
		Task<Feat> GetFeat(int featId);
		Task<Race> GetRace(int raceId);
		Task<List<Race>> GetRaces();
		Task<List<RacialFeature>> GetRacialFeatures(Race race);
		Task<List<RacialFeature>> GetRacialSubfeatures(RacialFeature parentFeature);
		Task<List<Skill>> GetSkills();
		Task<Spell> GetSpell(int spellId);
		Task<List<Feat>> GetSubFeats(Feat parentFeat);
		Task<Weapon> GetWeapon(int weaponId);
		Task<List<Weapon>> GetWeapons();
	}
}